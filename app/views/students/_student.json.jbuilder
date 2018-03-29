json.extract! student, :id, :name, :dob, :sex, :address_l1ne1, :address_line2, :diet_status, :diet, :allergy_status, :allergy, :parent_contact, :parent_phone, :parent_email, :status, :created_at, :updated_at
json.url student_url(student, format: :json)
