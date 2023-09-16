defmodule PayrollApiWeb.Router do
  # alias PayrollApiWeb.EmployeeController
  use PayrollApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/payroll_api", PayrollApiWeb do
    pipe_through :api

    get "/test", DefaultController, :index

    post "/employees", EmployeeController, :create
    delete "/employees", EmployeeController, :delete_all
    get "/employees", EmployeeController, :index
  end
end
