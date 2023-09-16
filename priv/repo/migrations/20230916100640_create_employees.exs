defmodule PayrollApi.Repo.Migrations.CreateEmployees do
  use Ecto.Migration

  def change do
    create table(:employees, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :first_name, :string
      add :last_name, :string
      add :department, :string
      add :role, :string
      add :salary, :decimal

      timestamps()
    end
  end
end
