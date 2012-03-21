namespace :import do
  task :permissions => :environment do
     Permission.delete_all
     SubPermission.delete_all
     role = Role.first
    per = Permission.create(:name=>"Super Admin Module",:display_name=>"Super Admin Permissions")

    ["Users Management","Roles Management", "Uploads Mangement", "Sites Management", "Videos Management", "Images Management","Content_Library Management", "Add_Forms Management", "Site_Pages Management"].each do |sub_per|
    sub_per_obj = role.sub_permissions.create(:name=>sub_per,:display_name=>sub_per,:permission_id=>per.id)
    end
  end
end

