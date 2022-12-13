defmodule TurboWeb.SettingsView do
  use TurboWeb, :view

  def render("update_password.json", %{token: token, message: message}) do
    %{data: %{token: token, message: message}}
  end

  def render("show_admin.json", %{user: user}) do
    %{data: %{user: %{id: user.id, name: user.name, email: user.email, phone: user.phone}}}
  end

  def render("show_customer.json", %{user: user}) do
    %{
      data: %{
        user: %{id: user.id, name: user.name, email: user.email, phone: user.phone},
        customer: %{
          id: user.customer.id,
          home_location: user.customer.home_location,
          home_location_reverse_geocoding: user.customer.home_location_reverse_geocoding,
          work_location: user.customer.work_location,
          work_location_reverse_geocoding: user.customer.work_location_reverse_geocoding
        }
      }
    }
  end

  def render("show_driver.json", %{user: user}) do
    %{
      data: %{
        user: %{id: user.id, name: user.name, email: user.email, phone: user.phone},
        driver: %{id: user.driver.id, license: user.driver.license}
      }
    }
  end
end
