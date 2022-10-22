# frozen_string_literal: true

require './maker'

File.open('script.sql', 'w') do |f|
  f.puts('INSERT INTO assignments (laboriousness, issue_date, planned_expiration_date, real_expiration_date, project_id, employee_id) VALUES')
  1000.times { f.puts(Maker.new.create) }
end
