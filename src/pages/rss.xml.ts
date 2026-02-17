import rss from '@astrojs/rss';
import { getWritings } from '../lib/writings';
import { SITE } from '../config';
import type { APIContext } from 'astro';

export async function GET(context: APIContext) {
  const writings = await getWritings();

  return rss({
    title: SITE.title,
    description: SITE.description,
    site: context.site!,
    items: writings.map((post) => ({
      title: post.title,
      pubDate: new Date(post.created_at),
      description: post.description,
      link: `/writings/${post.slug}/`,
    })),
  });
}
