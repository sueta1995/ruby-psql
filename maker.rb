# frozen_string_literal: true

# main class
class Maker
  def initialize
    @project_id = rand(1..10)
    @employee_id = rand(1..10)
  end

  def create
    case @project_id
    when 1 then writer(rand(2..14), 1_667_206_800)
    when 2 then writer(rand(2..28), 1_669_798_800)
    when 3 then writer(rand(2..14), 1_671_094_800)
    when 4 then writer(rand(2..10), 1_673_773_200)
    when 5 then writer(rand(2..8), 1_674_723_600)
    when 6 then writer(rand(2..8), 1_675_674_000)
    when 7 then writer(rand(2..20), 1_676_451_600)
    when 8 then writer(rand(2..8), 1_678_179_600)
    when 9 then writer(rand(2..8), 1_678_957_200)
    when 10 then writer(rand(2..4), 1_682_845_200)
    end
  end

  private

  def writer(laboriousness, deadline)
    issue_date = deadline - laboriousness * 86_400
    planned_expiration_date = issue_date + rand(1..(laboriousness - 1)) * 86_400
    real_expiration_date = deadline - 86_400

    "\t(#{laboriousness}, '#{Time.at(issue_date).to_s[0..-7]}', '#{Time.at(planned_expiration_date).to_s[0..-7]}', '#{Time.at(real_expiration_date).to_s[0..-7]}', #{@project_id}, #{@employee_id}),"
  end
end
