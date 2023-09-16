defmodule PayrollApiWeb.EmployeeJSON do
  alias PayrollApi.Employees.Employee

  @doc """
  Renders a list of employees.
  """
  def index(%{employees: employees}) do
    %{data: for(employee <- employees, do: data(employee))}
  end

  @doc """
  Renders a single employee.
  """
  def show(%{employee: employee}) do
    %{data: data(employee)}
  end

  defp data(%Employee{} = employee) do
    %{
      id: employee.id,
      first_name: employee.first_name,
      last_name: employee.last_name,
      department: employee.department,
      role: employee.role,
      salary: employee.salary
    }
  end
end
