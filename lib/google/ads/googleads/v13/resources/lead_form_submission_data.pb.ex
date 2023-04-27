defmodule Google.Ads.Googleads.V13.Resources.LeadFormSubmissionData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :string, deprecated: false
  field :asset, 3, type: :string, deprecated: false
  field :campaign, 4, type: :string, deprecated: false

  field :lead_form_submission_fields, 5,
    repeated: true,
    type: Google.Ads.Googleads.V13.Resources.LeadFormSubmissionField,
    json_name: "leadFormSubmissionFields",
    deprecated: false

  field :custom_lead_form_submission_fields, 10,
    repeated: true,
    type: Google.Ads.Googleads.V13.Resources.CustomLeadFormSubmissionField,
    json_name: "customLeadFormSubmissionFields",
    deprecated: false

  field :ad_group, 6, type: :string, json_name: "adGroup", deprecated: false
  field :ad_group_ad, 7, type: :string, json_name: "adGroupAd", deprecated: false
  field :gclid, 8, type: :string, deprecated: false

  field :submission_date_time, 9,
    type: :string,
    json_name: "submissionDateTime",
    deprecated: false
end

defmodule Google.Ads.Googleads.V13.Resources.LeadFormSubmissionField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field_type, 1,
    type:
      Google.Ads.Googleads.V13.Enums.LeadFormFieldUserInputTypeEnum.LeadFormFieldUserInputType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :field_value, 2, type: :string, json_name: "fieldValue", deprecated: false
end

defmodule Google.Ads.Googleads.V13.Resources.CustomLeadFormSubmissionField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :question_text, 1, type: :string, json_name: "questionText", deprecated: false
  field :field_value, 2, type: :string, json_name: "fieldValue", deprecated: false
end