defmodule Google.Cloud.Securitycenter.V1.CloudDlpInspection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :inspect_job, 1, type: :string, json_name: "inspectJob", deprecated: false
  field :info_type, 2, type: :string, json_name: "infoType"
  field :info_type_count, 3, type: :int64, json_name: "infoTypeCount"
  field :full_scan, 4, type: :bool, json_name: "fullScan"
end
