defmodule Google.Ads.Admanager.V1.Contact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :display_name, 3,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :company, 5, proto3_optional: true, type: :string, deprecated: false

  field :status, 6,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.ContactStatusEnum.ContactStatus,
    enum: true,
    deprecated: false

  field :address, 7, proto3_optional: true, type: :string, deprecated: false

  field :cell_phone, 8,
    proto3_optional: true,
    type: :string,
    json_name: "cellPhone",
    deprecated: false

  field :comment, 9, proto3_optional: true, type: :string, deprecated: false
  field :email, 10, proto3_optional: true, type: :string, deprecated: false
  field :fax, 11, proto3_optional: true, type: :string, deprecated: false
  field :title, 12, proto3_optional: true, type: :string, deprecated: false

  field :work_phone, 13,
    proto3_optional: true,
    type: :string,
    json_name: "workPhone",
    deprecated: false
end
