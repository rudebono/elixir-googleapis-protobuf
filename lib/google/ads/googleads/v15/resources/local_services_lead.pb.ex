defmodule Google.Ads.Googleads.V15.Resources.LocalServicesLead do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :category_id, 3, type: :string, json_name: "categoryId", deprecated: false
  field :service_id, 4, type: :string, json_name: "serviceId", deprecated: false

  field :contact_details, 5,
    type: Google.Ads.Googleads.V15.Resources.ContactDetails,
    json_name: "contactDetails",
    deprecated: false

  field :lead_type, 6,
    type: Google.Ads.Googleads.V15.Enums.LocalServicesLeadTypeEnum.LeadType,
    json_name: "leadType",
    enum: true,
    deprecated: false

  field :lead_status, 7,
    type: Google.Ads.Googleads.V15.Enums.LocalServicesLeadStatusEnum.LeadStatus,
    json_name: "leadStatus",
    enum: true,
    deprecated: false

  field :creation_date_time, 8, type: :string, json_name: "creationDateTime", deprecated: false
  field :locale, 9, type: :string, deprecated: false

  field :note, 10,
    proto3_optional: true,
    type: Google.Ads.Googleads.V15.Resources.Note,
    deprecated: false

  field :lead_charged, 11, type: :bool, json_name: "leadCharged", deprecated: false
end

defmodule Google.Ads.Googleads.V15.Resources.ContactDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phone_number, 1, type: :string, json_name: "phoneNumber", deprecated: false
  field :email, 2, type: :string, deprecated: false
  field :consumer_name, 3, type: :string, json_name: "consumerName", deprecated: false
end

defmodule Google.Ads.Googleads.V15.Resources.Note do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :edit_date_time, 1, type: :string, json_name: "editDateTime", deprecated: false
  field :description, 2, type: :string, deprecated: false
end