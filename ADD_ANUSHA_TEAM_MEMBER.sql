-- Add Anusha Ghimire to team_members table

INSERT INTO public.team_members (sort_order, name, ini, role, skills, img)
VALUES (
  6,
  'Anusha Ghimire',
  'AG',
  'chief communication manager',
  'Communication Strategy | Public Relations | Team Leadership',
  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiSeHh5fmab11ZmR640sfteWuVhbKk4hCwR6zuQQD4AF2VPfMl8m6PBq5mkKrMLYch7MY2uhkddD_N09Hq87jq8qy-6EGbqbOLUv5aKf4bPQySpYYHyJN4kCSgp2b4QdI3EWNu49Znd-hiewA9V9G6rxDtN3_AsayLVNu3oTDixl_aPVIRVOfKXHe_uO00/s600/anusha.jpeg'
)
ON CONFLICT DO NOTHING;

-- Update Arbindra's sort_order to 7 (so he comes after Anusha)
UPDATE public.team_members 
SET sort_order = 7
WHERE name = 'Arbindra Kharel';

-- Verify the team members
SELECT sort_order, name, role, ini FROM public.team_members ORDER BY sort_order;
