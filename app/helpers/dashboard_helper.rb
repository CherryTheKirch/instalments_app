module DashboardHelper
  def days_left(deadline)
    (deadline - Date.today).to_i
  end
end
