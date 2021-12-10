defmodule Google.Iam.Credentials.V1.GenerateAccessTokenRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          delegates: [String.t()],
          scope: [String.t()],
          lifetime: Google.Protobuf.Duration.t() | nil
        }

  defstruct name: "",
            delegates: [],
            scope: [],
            lifetime: nil

  field :name, 1, type: :string, deprecated: false
  field :delegates, 2, repeated: true, type: :string
  field :scope, 4, repeated: true, type: :string, deprecated: false
  field :lifetime, 7, type: Google.Protobuf.Duration
end
defmodule Google.Iam.Credentials.V1.GenerateAccessTokenResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_token: String.t(),
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct access_token: "",
            expire_time: nil

  field :access_token, 1, type: :string, json_name: "accessToken"
  field :expire_time, 3, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end
defmodule Google.Iam.Credentials.V1.SignBlobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          delegates: [String.t()],
          payload: binary
        }

  defstruct name: "",
            delegates: [],
            payload: ""

  field :name, 1, type: :string, deprecated: false
  field :delegates, 3, repeated: true, type: :string
  field :payload, 5, type: :bytes, deprecated: false
end
defmodule Google.Iam.Credentials.V1.SignBlobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_id: String.t(),
          signed_blob: binary
        }

  defstruct key_id: "",
            signed_blob: ""

  field :key_id, 1, type: :string, json_name: "keyId"
  field :signed_blob, 4, type: :bytes, json_name: "signedBlob"
end
defmodule Google.Iam.Credentials.V1.SignJwtRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          delegates: [String.t()],
          payload: String.t()
        }

  defstruct name: "",
            delegates: [],
            payload: ""

  field :name, 1, type: :string, deprecated: false
  field :delegates, 3, repeated: true, type: :string
  field :payload, 5, type: :string, deprecated: false
end
defmodule Google.Iam.Credentials.V1.SignJwtResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_id: String.t(),
          signed_jwt: String.t()
        }

  defstruct key_id: "",
            signed_jwt: ""

  field :key_id, 1, type: :string, json_name: "keyId"
  field :signed_jwt, 2, type: :string, json_name: "signedJwt"
end
defmodule Google.Iam.Credentials.V1.GenerateIdTokenRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          delegates: [String.t()],
          audience: String.t(),
          include_email: boolean
        }

  defstruct name: "",
            delegates: [],
            audience: "",
            include_email: false

  field :name, 1, type: :string, deprecated: false
  field :delegates, 2, repeated: true, type: :string
  field :audience, 3, type: :string, deprecated: false
  field :include_email, 4, type: :bool, json_name: "includeEmail"
end
defmodule Google.Iam.Credentials.V1.GenerateIdTokenResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          token: String.t()
        }

  defstruct token: ""

  field :token, 1, type: :string
end
