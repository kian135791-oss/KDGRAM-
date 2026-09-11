export const STORY_TTL_HOURS = 36;
export function storyExpiresAt(createdAt: Date){ return new Date(createdAt.getTime()+STORY_TTL_HOURS*60*60*1000); }
