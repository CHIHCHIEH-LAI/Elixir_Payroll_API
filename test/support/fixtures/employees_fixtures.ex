defmodule PayrollApi.EmployeesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PayrollApi.Employees` context.
  """

  @doc """
  Generate a employee.
  """
  def employee_fixture(attrs \\ %{}) do
    {:ok, employee} =
      attrs
      |> Enum.into(%{
        role: "some role",
        first_name: "some first_name",
        last_name: "some last_name",
        department: "some department",
        salary: "120.5"
      })
      |> PayrollApi.Employees.create_employee()

    employee
  end
end
