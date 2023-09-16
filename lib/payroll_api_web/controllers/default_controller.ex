defmodule PayrollApiWeb.DefaultController do
  use PayrollApiWeb, :controller

  def index(conn, _params) do
    text conn, "The Payroll API is LIVE - #{Mix.env()}"
  end
end
