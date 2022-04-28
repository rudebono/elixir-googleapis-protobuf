defmodule Google.Ads.Googleads.V10.Resources.LeadFormSubmissionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: String.t(),
          asset: String.t(),
          campaign: String.t(),
          lead_form_submission_fields: [
            Google.Ads.Googleads.V10.Resources.LeadFormSubmissionField.t()
          ],
          ad_group: String.t(),
          ad_group_ad: String.t(),
          gclid: String.t(),
          submission_date_time: String.t()
        }

  defstruct resource_name: "",
            id: "",
            asset: "",
            campaign: "",
            lead_form_submission_fields: [],
            ad_group: "",
            ad_group_ad: "",
            gclid: "",
            submission_date_time: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :string, deprecated: false
  field :asset, 3, type: :string, deprecated: false
  field :campaign, 4, type: :string, deprecated: false

  field :lead_form_submission_fields, 5,
    repeated: true,
    type: Google.Ads.Googleads.V10.Resources.LeadFormSubmissionField,
    json_name: "leadFormSubmissionFields",
    deprecated: false

  field :ad_group, 6, type: :string, json_name: "adGroup", deprecated: false
  field :ad_group_ad, 7, type: :string, json_name: "adGroupAd", deprecated: false
  field :gclid, 8, type: :string, deprecated: false

  field :submission_date_time, 9,
    type: :string,
    json_name: "submissionDateTime",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.LeadFormSubmissionField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field_type:
            Google.Ads.Googleads.V10.Enums.LeadFormFieldUserInputTypeEnum.LeadFormFieldUserInputType.t(),
          field_value: String.t()
        }

  defstruct field_type: :UNSPECIFIED,
            field_value: ""

  field :field_type, 1,
    type:
      Google.Ads.Googleads.V10.Enums.LeadFormFieldUserInputTypeEnum.LeadFormFieldUserInputType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :field_value, 2, type: :string, json_name: "fieldValue", deprecated: false
end
