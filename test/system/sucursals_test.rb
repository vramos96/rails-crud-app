require "application_system_test_case"

class SucursalsTest < ApplicationSystemTestCase
  setup do
    @sucursal = sucursals(:one)
  end

  test "visiting the index" do
    visit sucursals_url
    assert_selector "h1", text: "Sucursals"
  end

  test "creating a Sucursal" do
    visit sucursals_url
    click_on "New Sucursal"

    fill_in "Calle", with: @sucursal.calle
    fill_in "Ciudad", with: @sucursal.ciudad
    fill_in "Codigo postal", with: @sucursal.codigo_postal
    fill_in "Colonia", with: @sucursal.colonia
    fill_in "Nombre", with: @sucursal.nombre
    fill_in "Num exterior", with: @sucursal.num_exterior
    fill_in "Num interior", with: @sucursal.num_interior
    fill_in "Pais", with: @sucursal.pais
    fill_in "Persona", with: @sucursal.persona_id
    click_on "Create Sucursal"

    assert_text "Sucursal was successfully created"
    click_on "Back"
  end

  test "updating a Sucursal" do
    visit sucursals_url
    click_on "Edit", match: :first

    fill_in "Calle", with: @sucursal.calle
    fill_in "Ciudad", with: @sucursal.ciudad
    fill_in "Codigo postal", with: @sucursal.codigo_postal
    fill_in "Colonia", with: @sucursal.colonia
    fill_in "Nombre", with: @sucursal.nombre
    fill_in "Num exterior", with: @sucursal.num_exterior
    fill_in "Num interior", with: @sucursal.num_interior
    fill_in "Pais", with: @sucursal.pais
    fill_in "Persona", with: @sucursal.persona_id
    click_on "Update Sucursal"

    assert_text "Sucursal was successfully updated"
    click_on "Back"
  end

  test "destroying a Sucursal" do
    visit sucursals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sucursal was successfully destroyed"
  end
end
