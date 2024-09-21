defmodule Google.Cloud.Securitycenter.V2.Kubernetes.Role.Kind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :KIND_UNSPECIFIED, 0
  field :ROLE, 1
  field :CLUSTER_ROLE, 2
end

defmodule Google.Cloud.Securitycenter.V2.Kubernetes.Subject.AuthType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :AUTH_TYPE_UNSPECIFIED, 0
  field :USER, 1
  field :SERVICEACCOUNT, 2
  field :GROUP, 3
end

defmodule Google.Cloud.Securitycenter.V2.Kubernetes.Pod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ns, 1, type: :string
  field :name, 2, type: :string
  field :labels, 3, repeated: true, type: Google.Cloud.Securitycenter.V2.Label
  field :containers, 4, repeated: true, type: Google.Cloud.Securitycenter.V2.Container
end

defmodule Google.Cloud.Securitycenter.V2.Kubernetes.Node do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V2.Kubernetes.NodePool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :nodes, 2, repeated: true, type: Google.Cloud.Securitycenter.V2.Kubernetes.Node
end

defmodule Google.Cloud.Securitycenter.V2.Kubernetes.Role do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :kind, 1, type: Google.Cloud.Securitycenter.V2.Kubernetes.Role.Kind, enum: true
  field :ns, 2, type: :string
  field :name, 3, type: :string
end

defmodule Google.Cloud.Securitycenter.V2.Kubernetes.Binding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ns, 1, type: :string
  field :name, 2, type: :string
  field :role, 3, type: Google.Cloud.Securitycenter.V2.Kubernetes.Role
  field :subjects, 4, repeated: true, type: Google.Cloud.Securitycenter.V2.Kubernetes.Subject
end

defmodule Google.Cloud.Securitycenter.V2.Kubernetes.Subject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :kind, 1, type: Google.Cloud.Securitycenter.V2.Kubernetes.Subject.AuthType, enum: true
  field :ns, 2, type: :string
  field :name, 3, type: :string
end

defmodule Google.Cloud.Securitycenter.V2.Kubernetes.AccessReview do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :group, 1, type: :string
  field :ns, 2, type: :string
  field :name, 3, type: :string
  field :resource, 4, type: :string
  field :subresource, 5, type: :string
  field :verb, 6, type: :string
  field :version, 7, type: :string
end

defmodule Google.Cloud.Securitycenter.V2.Kubernetes.Object do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :group, 1, type: :string
  field :kind, 2, type: :string
  field :ns, 3, type: :string
  field :name, 4, type: :string
  field :containers, 5, repeated: true, type: Google.Cloud.Securitycenter.V2.Container
end

defmodule Google.Cloud.Securitycenter.V2.Kubernetes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :pods, 1, repeated: true, type: Google.Cloud.Securitycenter.V2.Kubernetes.Pod
  field :nodes, 2, repeated: true, type: Google.Cloud.Securitycenter.V2.Kubernetes.Node

  field :node_pools, 3,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.Kubernetes.NodePool,
    json_name: "nodePools"

  field :roles, 4, repeated: true, type: Google.Cloud.Securitycenter.V2.Kubernetes.Role
  field :bindings, 5, repeated: true, type: Google.Cloud.Securitycenter.V2.Kubernetes.Binding

  field :access_reviews, 6,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.Kubernetes.AccessReview,
    json_name: "accessReviews"

  field :objects, 7, repeated: true, type: Google.Cloud.Securitycenter.V2.Kubernetes.Object
end