defmodule Google.Cloud.Websecurityscanner.V1beta.Finding do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :finding_type, 2, type: :string, json_name: "findingType"
  field :http_method, 3, type: :string, json_name: "httpMethod"
  field :fuzzed_url, 4, type: :string, json_name: "fuzzedUrl"
  field :body, 5, type: :string
  field :description, 6, type: :string
  field :reproduction_url, 7, type: :string, json_name: "reproductionUrl"
  field :frame_url, 8, type: :string, json_name: "frameUrl"
  field :final_url, 9, type: :string, json_name: "finalUrl"
  field :tracking_id, 10, type: :string, json_name: "trackingId"
  field :form, 16, type: Google.Cloud.Websecurityscanner.V1beta.Form

  field :outdated_library, 11,
    type: Google.Cloud.Websecurityscanner.V1beta.OutdatedLibrary,
    json_name: "outdatedLibrary"

  field :violating_resource, 12,
    type: Google.Cloud.Websecurityscanner.V1beta.ViolatingResource,
    json_name: "violatingResource"

  field :vulnerable_headers, 15,
    type: Google.Cloud.Websecurityscanner.V1beta.VulnerableHeaders,
    json_name: "vulnerableHeaders"

  field :vulnerable_parameters, 13,
    type: Google.Cloud.Websecurityscanner.V1beta.VulnerableParameters,
    json_name: "vulnerableParameters"

  field :xss, 14, type: Google.Cloud.Websecurityscanner.V1beta.Xss
end
