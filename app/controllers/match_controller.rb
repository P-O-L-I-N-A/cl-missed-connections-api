class MatchController < ProtectedController

  # GET /match
  def index

    my_attrs = current_user.my_attrs
    matched = []

    my_attrs.each do |attr|
      match = Connection.where("car = ? AND gender = ? AND hair = ?", attr.car, attr.gender, attr.hair)
      match.each do |m|
        h = m.attributes
        h[:email_to] = m.user.email
        matched.push(h)
      end
    end

    render json: matched, root: "matches"
  end


end
