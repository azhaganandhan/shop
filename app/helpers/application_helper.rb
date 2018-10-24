module ApplicationHelper
  def link_to_add_fields(name, f, association, association_new_object = nil)
  new_object = association_new_object || f.object.send(association).klass.new
  id = new_object.object_id
  fields = f.fields_for(association, new_object, child_index: id) do |builder|
    render(association.to_s.singularize  + "_form", f: builder, image: nil)
  end
  link_to(name, "#", class: "add_fields btn btn-info btn-col", data: {id: id, fields: fields.gsub("\n","")})
end
end
