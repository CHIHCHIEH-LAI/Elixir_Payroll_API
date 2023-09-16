defmodule PayrollApi.Employees.Employee do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "employees" do
    field :role, :string
    field :first_name, :string
    field :last_name, :string
    field :department, :string
    field :salary, :decimal

    timestamps()
  end

  @doc false
  def changeset(employee, attrs) do
    employee
    |> cast(attrs, [:first_name, :last_name, :department, :role, :salary])
    |> validate_required([:first_name, :last_name])
  end
end
