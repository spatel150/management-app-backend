Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # root 'employees#index'
      resources :managements do
        resources :employees
      end
      resources :employees do
        resources :roles
      end
      get "/allByManager/:management_id/employees", to: "employees#showAllByManager"
    end
  end
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# TO GET EMPLOYEES BY MANAGER
# /api/v1/managements/:management_id/employees

# TO ADD EMPLOYEES TO MANAGER
# /api/v1/managements/:management_id/employees

# TO GET ROLES BY EMPLOYEE
# /api/v1/employees/:employee_id/roles

# TO ADD ROLES TO EMPLOYEE
# /api/v1/employees/:employee_id/roles

# TO ADD MANAGER
# /api/v1/managements
