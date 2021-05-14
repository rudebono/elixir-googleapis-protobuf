defmodule Grafeas.V1beta1.Image.Layer.Directive do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DIRECTIVE_UNSPECIFIED
          | :MAINTAINER
          | :RUN
          | :CMD
          | :LABEL
          | :EXPOSE
          | :ENV
          | :ADD
          | :COPY
          | :ENTRYPOINT
          | :VOLUME
          | :USER
          | :WORKDIR
          | :ARG
          | :ONBUILD
          | :STOPSIGNAL
          | :HEALTHCHECK
          | :SHELL

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          directive: Grafeas.V1beta1.Image.Layer.Directive.t(),
          arguments: String.t()
        }

  defstruct [:directive, :arguments]

  field :directive, 1, type: Grafeas.V1beta1.Image.Layer.Directive, enum: true
  field :arguments, 2, type: :string
end

defmodule Grafeas.V1beta1.Image.Fingerprint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          v1_name: String.t(),
          v2_blob: [String.t()],
          v2_name: String.t()
        }

  defstruct [:v1_name, :v2_blob, :v2_name]

  field :v1_name, 1, type: :string
  field :v2_blob, 2, repeated: true, type: :string
  field :v2_name, 3, type: :string
end

defmodule Grafeas.V1beta1.Image.Basis do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_url: String.t(),
          fingerprint: Grafeas.V1beta1.Image.Fingerprint.t() | nil
        }

  defstruct [:resource_url, :fingerprint]

  field :resource_url, 1, type: :string
  field :fingerprint, 2, type: Grafeas.V1beta1.Image.Fingerprint
end

defmodule Grafeas.V1beta1.Image.Details do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          derived_image: Grafeas.V1beta1.Image.Derived.t() | nil
        }

  defstruct [:derived_image]

  field :derived_image, 1, type: Grafeas.V1beta1.Image.Derived
end

defmodule Grafeas.V1beta1.Image.Derived do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fingerprint: Grafeas.V1beta1.Image.Fingerprint.t() | nil,
          distance: integer,
          layer_info: [Grafeas.V1beta1.Image.Layer.t()],
          base_resource_url: String.t()
        }

  defstruct [:fingerprint, :distance, :layer_info, :base_resource_url]

  field :fingerprint, 1, type: Grafeas.V1beta1.Image.Fingerprint
  field :distance, 2, type: :int32
  field :layer_info, 3, repeated: true, type: Grafeas.V1beta1.Image.Layer
  field :base_resource_url, 4, type: :string
end
