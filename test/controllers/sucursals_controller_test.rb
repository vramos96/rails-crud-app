require 'test_helper'

class SucursalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sucursal = sucursals(:one)
  end

  test "should get index" do
    get sucursals_url
    assert_response :success
  end

  test "should get new" do
    get new_sucursal_url
    assert_response :success
  end

  test "should create sucursal" do
    assert_difference('Sucursal.count') do
      post sucursals_url, params: { sucursal: { calle: @sucursal.calle, ciudad: @sucursal.ciudad, codigo_postal: @sucursal.codigo_postal, colonia: @sucursal.colonia, nombre: @sucursal.nombre, num_exterior: @sucursal.num_exterior, num_interior: @sucursal.num_interior, pais: @sucursal.pais, persona_id: @sucursal.persona_id } }
    end

    assert_redirected_to sucursal_url(Sucursal.last)
  end

  test "should show sucursal" do
    get sucursal_url(@sucursal)
    assert_response :success
  end

  test "should get edit" do
    get edit_sucursal_url(@sucursal)
    assert_response :success
  end

  test "should update sucursal" do
    patch sucursal_url(@sucursal), params: { sucursal: { calle: @sucursal.calle, ciudad: @sucursal.ciudad, codigo_postal: @sucursal.codigo_postal, colonia: @sucursal.colonia, nombre: @sucursal.nombre, num_exterior: @sucursal.num_exterior, num_interior: @sucursal.num_interior, pais: @sucursal.pais, persona_id: @sucursal.persona_id } }
    assert_redirected_to sucursal_url(@sucursal)
  end

  test "should destroy sucursal" do
    assert_difference('Sucursal.count', -1) do
      delete sucursal_url(@sucursal)
    end

    assert_redirected_to sucursals_url
  end
end
