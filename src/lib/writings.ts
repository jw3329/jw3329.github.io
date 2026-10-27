import { getCollection, type CollectionEntry } from 'astro:content';
import { marked } from 'marked';

export interface Writing {
  slug: string;
  title: string;
  description: string;
  content: string;
  category: 'dev' | 'personal';
  tags: string[];
  draft: boolean;
  created_at: string;
}

function toWriting(entry: CollectionEntry<'writings'>): Writing {
  return {
    slug: entry.id,
    title: entry.data.title,
    description: entry.data.description,
    content: entry.body ?? '',
    category: entry.data.category,
    tags: entry.data.tags,
    draft: entry.data.draft,
    created_at: entry.data.date.toISOString(),
  };
}

export async function getWritings(): Promise<Writing[]> {
  const entries = await getCollection('writings', ({ data }) => !data.draft);
  return entries
    .map(toWriting)
    .sort((a, b) => b.created_at.localeCompare(a.created_at));
}

export async function getWritingBySlug(slug: string): Promise<Writing | null> {
  const writings = await getWritings();
  return writings.find((w) => w.slug === slug) ?? null;
}

export function renderMarkdown(content: string): string {
  return marked.parse(content, { async: false }) as string;
}
