Fabricator(:scraping_task) do
  schema_id { Fabricate(:schema).id }
  scraping_schedule_id { Fabricate(:scraping_schedule).id }
end