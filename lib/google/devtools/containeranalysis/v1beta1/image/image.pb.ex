defmodule Grafeas.V1beta1.Image.Layer.Directive do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DIRECTIVE_UNSPECIFIED, 0
  field :MAINTAINER, 1
  field :RUN, 2
  field :CMD, 3
  field :LABEL, 4
  field :EXPOSE, 5
  field :ENV, 6
  field :ADD, 7
  field :COPY, 8
  field :ENTRYPOINT, 9
  field :VOLUME, 10
  field :USER, 11
  field :WORKDIR, 12
  field :ARG, 13
  field :ONBUILD, 14
  field :STOPSIGNAL, 15
  field :HEALTHCHECK, 16
  field :SHELL, 17
end

defmodule Grafeas.V1beta1.Image.Layer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :directive, 1, type: Grafeas.V1beta1.Image.Layer.Directive, enum: true
  field :arguments, 2, type: :string
end

defmodule Grafeas.V1beta1.Image.Fingerprint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :v1_name, 1, type: :string, json_name: "v1Name"
  field :v2_blob, 2, repeated: true, type: :string, json_name: "v2Blob"
  field :v2_name, 3, type: :string, json_name: "v2Name"
end

defmodule Grafeas.V1beta1.Image.Basis do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_url, 1, type: :string, json_name: "resourceUrl"
  field :fingerprint, 2, type: Grafeas.V1beta1.Image.Fingerprint
end

defmodule Grafeas.V1beta1.Image.Details do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :derived_image, 1, type: Grafeas.V1beta1.Image.Derived, json_name: "derivedImage"
end

defmodule Grafeas.V1beta1.Image.Derived do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :fingerprint, 1, type: Grafeas.V1beta1.Image.Fingerprint
  field :distance, 2, type: :int32
  field :layer_info, 3, repeated: true, type: Grafeas.V1beta1.Image.Layer, json_name: "layerInfo"
  field :base_resource_url, 4, type: :string, json_name: "baseResourceUrl"
end