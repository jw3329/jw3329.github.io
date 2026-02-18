import { supabase } from './supabase';
import { marked } from 'marked';

export interface Writing {
  id: string;
  slug: string;
  title: string;
  description: string;
  content: string;
  category: 'dev' | 'personal';
  tags: string[];
  draft: boolean;
  created_at: string;
  updated_at: string;
}

export async function getWritings(): Promise<Writing[]> {
  if (!supabase) return [];

  const { data, error } = await supabase
    .from('writings')
    .select('*')
    .eq('draft', false)
    .order('created_at', { ascending: false });

  if (error) {
    console.error('Error fetching writings:', error.message);
    return [];
  }

  return data as Writing[];
}

export async function getWritingBySlug(slug: string): Promise<Writing | null> {
  if (!supabase) return null;

  const { data, error } = await supabase
    .from('writings')
    .select('*')
    .eq('slug', slug)
    .single();

  if (error) {
    console.error('Error fetching writing:', error.message);
    return null;
  }

  return data as Writing;
}

export function renderMarkdown(content: string): string {
  return marked.parse(content, { async: false }) as string;
}
