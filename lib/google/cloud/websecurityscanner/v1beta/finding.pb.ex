defmodule Google.Cloud.Websecurityscanner.V1beta.Finding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          finding_type: String.t(),
          http_method: String.t(),
          fuzzed_url: String.t(),
          body: String.t(),
          description: String.t(),
          reproduction_url: String.t(),
          frame_url: String.t(),
          final_url: String.t(),
          tracking_id: String.t(),
          form: Google.Cloud.Websecurityscanner.V1beta.Form.t() | nil,
          outdated_library: Google.Cloud.Websecurityscanner.V1beta.OutdatedLibrary.t() | nil,
          violating_resource: Google.Cloud.Websecurityscanner.V1beta.ViolatingResource.t() | nil,
          vulnerable_headers: Google.Cloud.Websecurityscanner.V1beta.VulnerableHeaders.t() | nil,
          vulnerable_parameters:
            Google.Cloud.Websecurityscanner.V1beta.VulnerableParameters.t() | nil,
          xss: Google.Cloud.Websecurityscanner.V1beta.Xss.t() | nil
        }

  defstruct [
    :name,
    :finding_type,
    :http_method,
    :fuzzed_url,
    :body,
    :description,
    :reproduction_url,
    :frame_url,
    :final_url,
    :tracking_id,
    :form,
    :outdated_library,
    :violating_resource,
    :vulnerable_headers,
    :vulnerable_parameters,
    :xss
  ]

  field :name, 1, type: :string
  field :finding_type, 2, type: :string
  field :http_method, 3, type: :string
  field :fuzzed_url, 4, type: :string
  field :body, 5, type: :string
  field :description, 6, type: :string
  field :reproduction_url, 7, type: :string
  field :frame_url, 8, type: :string
  field :final_url, 9, type: :string
  field :tracking_id, 10, type: :string
  field :form, 16, type: Google.Cloud.Websecurityscanner.V1beta.Form
  field :outdated_library, 11, type: Google.Cloud.Websecurityscanner.V1beta.OutdatedLibrary
  field :violating_resource, 12, type: Google.Cloud.Websecurityscanner.V1beta.ViolatingResource
  field :vulnerable_headers, 15, type: Google.Cloud.Websecurityscanner.V1beta.VulnerableHeaders

  field :vulnerable_parameters, 13,
    type: Google.Cloud.Websecurityscanner.V1beta.VulnerableParameters

  field :xss, 14, type: Google.Cloud.Websecurityscanner.V1beta.Xss
end
