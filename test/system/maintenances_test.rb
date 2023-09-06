require "application_system_test_case"

class MaintenancesTest < ApplicationSystemTestCase
  setup do
    @maintenance = maintenances(:one)
  end

  test "visiting the index" do
    visit maintenances_url
    assert_selector "h1", text: "Maintenances"
  end

  test "should create maintenance" do
    visit maintenances_url
    click_on "New maintenance"

    fill_in "Type maintenance", with: @maintenance.Type_maintenance
    fill_in "Cities", with: @maintenance.cities_id
    fill_in "Date", with: @maintenance.date
    fill_in "Email", with: @maintenance.email
    fill_in "Machines", with: @maintenance.machines_id
    fill_in "Materials", with: @maintenance.materials_id
    fill_in "Name machine", with: @maintenance.name_machine
    fill_in "Type machine", with: @maintenance.type_machine
    click_on "Create Maintenance"

    assert_text "Maintenance was successfully created"
    click_on "Back"
  end

  test "should update Maintenance" do
    visit maintenance_url(@maintenance)
    click_on "Edit this maintenance", match: :first

    fill_in "Type maintenance", with: @maintenance.Type_maintenance
    fill_in "Cities", with: @maintenance.cities_id
    fill_in "Date", with: @maintenance.date
    fill_in "Email", with: @maintenance.email
    fill_in "Machines", with: @maintenance.machines_id
    fill_in "Materials", with: @maintenance.materials_id
    fill_in "Name machine", with: @maintenance.name_machine
    fill_in "Type machine", with: @maintenance.type_machine
    click_on "Update Maintenance"

    assert_text "Maintenance was successfully updated"
    click_on "Back"
  end

  test "should destroy Maintenance" do
    visit maintenance_url(@maintenance)
    click_on "Destroy this maintenance", match: :first

    assert_text "Maintenance was successfully destroyed"
  end
end
