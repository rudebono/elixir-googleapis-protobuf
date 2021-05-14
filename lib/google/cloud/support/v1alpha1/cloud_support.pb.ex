defmodule Google.Cloud.Support.V1alpha1.GetSupportAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Support.V1alpha1.ListSupportAccountsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:filter, :page_size, :page_token]

  field :filter, 1, type: :string
  field :page_size, 2, type: :int64
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Support.V1alpha1.ListSupportAccountsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accounts: [Google.Cloud.Support.Common.SupportAccount.t()],
          next_page_token: String.t()
        }

  defstruct [:accounts, :next_page_token]

  field :accounts, 1, repeated: true, type: Google.Cloud.Support.Common.SupportAccount
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Support.V1alpha1.GetCaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Support.V1alpha1.ListCasesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :filter, :page_size, :page_token]

  field :name, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int64
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Support.V1alpha1.ListCasesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cases: [Google.Cloud.Support.Common.Case.t()],
          next_page_token: String.t()
        }

  defstruct [:cases, :next_page_token]

  field :cases, 1, repeated: true, type: Google.Cloud.Support.Common.Case
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Support.V1alpha1.ListCommentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Support.V1alpha1.ListCommentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          comments: [Google.Cloud.Support.Common.Comment.t()]
        }

  defstruct [:comments]

  field :comments, 1, repeated: true, type: Google.Cloud.Support.Common.Comment
end

defmodule Google.Cloud.Support.V1alpha1.CreateCaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          case: Google.Cloud.Support.Common.Case.t() | nil
        }

  defstruct [:parent, :case]

  field :parent, 1, type: :string
  field :case, 2, type: Google.Cloud.Support.Common.Case
end

defmodule Google.Cloud.Support.V1alpha1.UpdateCaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          case: Google.Cloud.Support.Common.Case.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:case, :update_mask]

  field :case, 1, type: Google.Cloud.Support.Common.Case
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Support.V1alpha1.CreateCommentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          comment: Google.Cloud.Support.Common.Comment.t() | nil
        }

  defstruct [:name, :comment]

  field :name, 1, type: :string
  field :comment, 2, type: Google.Cloud.Support.Common.Comment
end

defmodule Google.Cloud.Support.V1alpha1.GetIssueTaxonomyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
