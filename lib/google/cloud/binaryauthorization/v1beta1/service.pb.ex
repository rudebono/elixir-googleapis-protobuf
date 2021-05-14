defmodule Google.Cloud.Binaryauthorization.V1beta1.GetPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.UpdatePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy: Google.Cloud.Binaryauthorization.V1beta1.Policy.t() | nil
        }

  defstruct [:policy]

  field :policy, 1, type: Google.Cloud.Binaryauthorization.V1beta1.Policy
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.CreateAttestorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          attestor_id: String.t(),
          attestor: Google.Cloud.Binaryauthorization.V1beta1.Attestor.t() | nil
        }

  defstruct [:parent, :attestor_id, :attestor]

  field :parent, 1, type: :string
  field :attestor_id, 2, type: :string
  field :attestor, 3, type: Google.Cloud.Binaryauthorization.V1beta1.Attestor
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.GetAttestorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.UpdateAttestorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attestor: Google.Cloud.Binaryauthorization.V1beta1.Attestor.t() | nil
        }

  defstruct [:attestor]

  field :attestor, 1, type: Google.Cloud.Binaryauthorization.V1beta1.Attestor
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ListAttestorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ListAttestorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attestors: [Google.Cloud.Binaryauthorization.V1beta1.Attestor.t()],
          next_page_token: String.t()
        }

  defstruct [:attestors, :next_page_token]

  field :attestors, 1, repeated: true, type: Google.Cloud.Binaryauthorization.V1beta1.Attestor
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.DeleteAttestorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end
