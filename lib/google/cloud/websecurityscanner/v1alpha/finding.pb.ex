defmodule Google.Cloud.Websecurityscanner.V1alpha.Finding.FindingType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FINDING_TYPE_UNSPECIFIED
          | :MIXED_CONTENT
          | :OUTDATED_LIBRARY
          | :ROSETTA_FLASH
          | :XSS_CALLBACK
          | :XSS_ERROR
          | :CLEAR_TEXT_PASSWORD
          | :INVALID_CONTENT_TYPE
          | :XSS_ANGULAR_CALLBACK
          | :INVALID_HEADER
          | :MISSPELLED_SECURITY_HEADER_NAME
          | :MISMATCHING_SECURITY_HEADER_VALUES

  field :FINDING_TYPE_UNSPECIFIED, 0
  field :MIXED_CONTENT, 1
  field :OUTDATED_LIBRARY, 2
  field :ROSETTA_FLASH, 5
  field :XSS_CALLBACK, 3
  field :XSS_ERROR, 4
  field :CLEAR_TEXT_PASSWORD, 6
  field :INVALID_CONTENT_TYPE, 7
  field :XSS_ANGULAR_CALLBACK, 8
  field :INVALID_HEADER, 9
  field :MISSPELLED_SECURITY_HEADER_NAME, 10
  field :MISMATCHING_SECURITY_HEADER_VALUES, 11
end

defmodule Google.Cloud.Websecurityscanner.V1alpha.Finding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          finding_type: Google.Cloud.Websecurityscanner.V1alpha.Finding.FindingType.t(),
          http_method: String.t(),
          fuzzed_url: String.t(),
          body: String.t(),
          description: String.t(),
          reproduction_url: String.t(),
          frame_url: String.t(),
          final_url: String.t(),
          tracking_id: String.t(),
          outdated_library: Google.Cloud.Websecurityscanner.V1alpha.OutdatedLibrary.t() | nil,
          violating_resource: Google.Cloud.Websecurityscanner.V1alpha.ViolatingResource.t() | nil,
          vulnerable_headers: Google.Cloud.Websecurityscanner.V1alpha.VulnerableHeaders.t() | nil,
          vulnerable_parameters:
            Google.Cloud.Websecurityscanner.V1alpha.VulnerableParameters.t() | nil,
          xss: Google.Cloud.Websecurityscanner.V1alpha.Xss.t() | nil
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
    :outdated_library,
    :violating_resource,
    :vulnerable_headers,
    :vulnerable_parameters,
    :xss
  ]

  field :name, 1, type: :string

  field :finding_type, 2,
    type: Google.Cloud.Websecurityscanner.V1alpha.Finding.FindingType,
    enum: true,
    json_name: "findingType"

  field :http_method, 3, type: :string, json_name: "httpMethod"
  field :fuzzed_url, 4, type: :string, json_name: "fuzzedUrl"
  field :body, 5, type: :string
  field :description, 6, type: :string
  field :reproduction_url, 7, type: :string, json_name: "reproductionUrl"
  field :frame_url, 8, type: :string, json_name: "frameUrl"
  field :final_url, 9, type: :string, json_name: "finalUrl"
  field :tracking_id, 10, type: :string, json_name: "trackingId"

  field :outdated_library, 11,
    type: Google.Cloud.Websecurityscanner.V1alpha.OutdatedLibrary,
    json_name: "outdatedLibrary"

  field :violating_resource, 12,
    type: Google.Cloud.Websecurityscanner.V1alpha.ViolatingResource,
    json_name: "violatingResource"

  field :vulnerable_headers, 15,
    type: Google.Cloud.Websecurityscanner.V1alpha.VulnerableHeaders,
    json_name: "vulnerableHeaders"

  field :vulnerable_parameters, 13,
    type: Google.Cloud.Websecurityscanner.V1alpha.VulnerableParameters,
    json_name: "vulnerableParameters"

  field :xss, 14, type: Google.Cloud.Websecurityscanner.V1alpha.Xss

  def transform_module(), do: nil
end
