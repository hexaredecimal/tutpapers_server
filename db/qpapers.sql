
create table if not exists QPapers(
	qui INTEGER PRIMARY KEY NOT NULL, 
	module_name TEXT NOT NULL, 
	year_of INTEGER NOT NULL, 
	uploader TEXT NOT NULL, 
	file_path TEXT NOT NULL,
	assessment TEXT NOT NULL,
	downloads INTEGER NOT NULL
);

