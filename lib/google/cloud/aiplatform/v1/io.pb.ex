defmodule Google.Cloud.Aiplatform.V1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uris: [String.t()]
        }

  defstruct [:uris]

  field :uris, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri_prefix: String.t()
        }

  defstruct [:output_uri_prefix]

  field :output_uri_prefix, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.BigQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t()
        }

  defstruct [:input_uri]

  field :input_uri, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.BigQueryDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri: String.t()
        }

  defstruct [:output_uri]

  field :output_uri, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ContainerRegistryDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri: String.t()
        }

  defstruct [:output_uri]

  field :output_uri, 1, type: :string
end
