-- Create the login_logs table
create table if not exists login_logs (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade,
  email text not null,
  login_time timestamptz default now()
);
