defmodule Cloud.Kubernetes.Security.ContainersecurityLogging.FindingType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :FINDING_TYPE_UNSPECIFIED, 0
  field :FINDING_TYPE_MISCONFIG, 1
  field :FINDING_TYPE_VULNERABILITY, 2
end

defmodule Cloud.Kubernetes.Security.ContainersecurityLogging.Severity do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :SEVERITY_CRITICAL, 1
  field :SEVERITY_HIGH, 2
  field :SEVERITY_MEDIUM, 3
  field :SEVERITY_LOW, 4
end

defmodule Cloud.Kubernetes.Security.ContainersecurityLogging.Finding.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :REMEDIATED, 2
end

defmodule Cloud.Kubernetes.Security.ContainersecurityLogging.Vulnerability do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :package_name, 1, type: :string, json_name: "packageName"
  field :affected_package_version, 2, type: :string, json_name: "affectedPackageVersion"
  field :cve_id, 3, type: :string, json_name: "cveId"
  field :cpe_uri, 4, type: :string, json_name: "cpeUri"

  field :severity, 5,
    type: Cloud.Kubernetes.Security.ContainersecurityLogging.Severity,
    enum: true

  field :cvss_score, 6, type: :float, json_name: "cvssScore"
  field :cvss_vector, 7, type: :string, json_name: "cvssVector"
  field :fixed_cpe_uri, 8, type: :string, json_name: "fixedCpeUri"
  field :package_type, 9, type: :string, json_name: "packageType"
  field :fixed_package, 10, type: :string, json_name: "fixedPackage"
  field :fixed_package_version, 11, type: :string, json_name: "fixedPackageVersion"
  field :description, 12, type: :string
  field :related_urls, 13, repeated: true, type: :string, json_name: "relatedUrls"
  field :affected_images, 14, repeated: true, type: :string, json_name: "affectedImages"
end

defmodule Cloud.Kubernetes.Security.ContainersecurityLogging.Finding do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :details, 0

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :type, 2, type: Cloud.Kubernetes.Security.ContainersecurityLogging.FindingType, enum: true

  field :state, 3,
    type: Cloud.Kubernetes.Security.ContainersecurityLogging.Finding.State,
    enum: true

  field :finding, 4, type: :string

  field :severity, 5,
    type: Cloud.Kubernetes.Security.ContainersecurityLogging.Severity,
    enum: true

  field :event_time, 6, type: Google.Protobuf.Timestamp, json_name: "eventTime"

  field :vulnerability, 7,
    type: Cloud.Kubernetes.Security.ContainersecurityLogging.Vulnerability,
    oneof: 0
end