-- Writings table for blog posts
CREATE TABLE IF NOT EXISTS writings (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  slug TEXT UNIQUE NOT NULL,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  content TEXT NOT NULL,
  category TEXT CHECK (category IN ('dev', 'personal')) NOT NULL,
  tags TEXT[] DEFAULT '{}',
  draft BOOLEAN DEFAULT false,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Auto-update updated_at on row change
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER writings_updated_at
  BEFORE UPDATE ON writings
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at();

-- Indexes for faster lookups
CREATE INDEX idx_writings_slug ON writings (slug);
CREATE INDEX idx_writings_category ON writings (category);
CREATE INDEX idx_writings_draft ON writings (draft);
CREATE INDEX idx_writings_created_at ON writings (created_at DESC);

-- Enable Row Level Security
ALTER TABLE writings ENABLE ROW LEVEL SECURITY;

-- Allow public read access for non-draft posts (used at build time via anon key)
CREATE POLICY "Public can read published writings"
  ON writings
  FOR SELECT
  USING (draft = false);

-- Allow authenticated users full access (for admin/editing)
CREATE POLICY "Authenticated users have full access"
  ON writings
  FOR ALL
  TO authenticated
  USING (true)
  WITH CHECK (true);
