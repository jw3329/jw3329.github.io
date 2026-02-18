export const SITE = {
  title: 'Junwon Jung',
  description: 'Member of Technical Staff at CurieTech AI. Ex-TikTok SRE & Risk Engineer. Cofounder of Moim. Founder of WiseBuy. Building products and writing about dev, life, and everything in between.',
  url: 'https://jw3329.github.io',
  author: 'Junwon Jung',
  socials: {
    github: 'https://github.com/jw3329',
    linkedin: 'https://www.linkedin.com/in/junwon3329',
  },
};

// Configure at https://giscus.app — enable GitHub Discussions on your repo first
export const GISCUS = {
  repo: 'jw3329/jw3329.github.io' as const,
  repoId: '', // TODO: get from https://giscus.app
  category: 'Announcements',
  categoryId: '', // TODO: get from https://giscus.app
  mapping: 'pathname' as const,
  reactionsEnabled: true,
  inputPosition: 'top' as const,
  lang: 'en',
};
