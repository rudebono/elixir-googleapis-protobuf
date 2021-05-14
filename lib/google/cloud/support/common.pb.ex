defmodule Google.Cloud.Support.Common.SupportAccount.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :PENDING | :PENDING_DELETION

  field :STATE_UNSPECIFIED, 0

  field :ACTIVE, 1

  field :PENDING, 2

  field :PENDING_DELETION, 3
end

defmodule Google.Cloud.Support.Common.SupportAccount.PricingModel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PRICING_MODEL_UNKNOWN | :PACKAGES | :USER_ROLES

  field :PRICING_MODEL_UNKNOWN, 0

  field :PACKAGES, 1

  field :USER_ROLES, 2
end

defmodule Google.Cloud.Support.Common.Case.Priority do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PRIORITY_UNSPECIFIED | :P0 | :P1 | :P2 | :P3 | :P4

  field :PRIORITY_UNSPECIFIED, 0

  field :P0, 1

  field :P1, 2

  field :P2, 3

  field :P3, 4

  field :P4, 5
end

defmodule Google.Cloud.Support.Common.Case.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :NEW
          | :ASSIGNED
          | :IN_PROGRESS_GOOGLE_SUPPORT
          | :IN_PROGRESS_GOOGLE_ENG
          | :IN_PROGRESS_KNOWN_ISSUE
          | :WAITING_FOR_CUSTOMER_RESPONSE
          | :SOLUTION_OFFERED
          | :CLOSED

  field :STATE_UNSPECIFIED, 0

  field :NEW, 1

  field :ASSIGNED, 2

  field :IN_PROGRESS_GOOGLE_SUPPORT, 3

  field :IN_PROGRESS_GOOGLE_ENG, 4

  field :IN_PROGRESS_KNOWN_ISSUE, 5

  field :WAITING_FOR_CUSTOMER_RESPONSE, 6

  field :SOLUTION_OFFERED, 7

  field :CLOSED, 8
end

defmodule Google.Cloud.Support.Common.CustomerIssue.IssueState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ISSUE_STATE_UNSPECIFIED
          | :OPEN
          | :IN_PROGRESS
          | :FIXED
          | :WONT_FIX
          | :VERIFIED

  field :ISSUE_STATE_UNSPECIFIED, 0

  field :OPEN, 1

  field :IN_PROGRESS, 2

  field :FIXED, 3

  field :WONT_FIX, 4

  field :VERIFIED, 5
end

defmodule Google.Cloud.Support.Common.SupportRole.Role do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ROLE_UNSPECIFIED | :BASIC | :DEVELOPER | :OPERATION | :SITE_RELIABILITY

  field :ROLE_UNSPECIFIED, 0

  field :BASIC, 1

  field :DEVELOPER, 2

  field :OPERATION, 3

  field :SITE_RELIABILITY, 4
end

defmodule Google.Cloud.Support.Common.SupportAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          account_id: String.t(),
          cloud_resource: String.t(),
          display_name: String.t(),
          state: Google.Cloud.Support.Common.SupportAccount.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          billing_account_name: String.t(),
          unify_account_id: String.t(),
          pricing_model: Google.Cloud.Support.Common.SupportAccount.PricingModel.t()
        }

  defstruct [
    :name,
    :account_id,
    :cloud_resource,
    :display_name,
    :state,
    :create_time,
    :billing_account_name,
    :unify_account_id,
    :pricing_model
  ]

  field :name, 1, type: :string
  field :account_id, 2, type: :string
  field :cloud_resource, 3, type: :string
  field :display_name, 4, type: :string
  field :state, 5, type: Google.Cloud.Support.Common.SupportAccount.State, enum: true
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :billing_account_name, 7, type: :string
  field :unify_account_id, 8, type: :string

  field :pricing_model, 9,
    type: Google.Cloud.Support.Common.SupportAccount.PricingModel,
    enum: true
end

defmodule Google.Cloud.Support.Common.Case do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          component: String.t(),
          subcomponent: String.t(),
          client_timezone: String.t(),
          cc_addresses: [String.t()],
          project_id: String.t(),
          issues: [Google.Cloud.Support.Common.CustomerIssue.t()],
          priority: Google.Cloud.Support.Common.Case.Priority.t(),
          state: Google.Cloud.Support.Common.Case.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          creator_email: String.t(),
          category: String.t()
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :component,
    :subcomponent,
    :client_timezone,
    :cc_addresses,
    :project_id,
    :issues,
    :priority,
    :state,
    :create_time,
    :update_time,
    :creator_email,
    :category
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :component, 4, type: :string
  field :subcomponent, 5, type: :string
  field :client_timezone, 6, type: :string
  field :cc_addresses, 7, repeated: true, type: :string
  field :project_id, 8, type: :string
  field :issues, 10, repeated: true, type: Google.Cloud.Support.Common.CustomerIssue
  field :priority, 11, type: Google.Cloud.Support.Common.Case.Priority, enum: true
  field :state, 12, type: Google.Cloud.Support.Common.Case.State, enum: true
  field :create_time, 13, type: Google.Protobuf.Timestamp
  field :update_time, 14, type: Google.Protobuf.Timestamp
  field :creator_email, 15, type: :string
  field :category, 16, type: :string
end

defmodule Google.Cloud.Support.Common.CustomerIssue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue_id: String.t(),
          state: Google.Cloud.Support.Common.CustomerIssue.IssueState.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          resolve_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:issue_id, :state, :create_time, :resolve_time, :update_time]

  field :issue_id, 1, type: :string
  field :state, 2, type: Google.Cloud.Support.Common.CustomerIssue.IssueState, enum: true
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :resolve_time, 4, type: Google.Protobuf.Timestamp
  field :update_time, 5, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Support.Common.SupportRole do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          email: String.t(),
          role: Google.Cloud.Support.Common.SupportRole.Role.t()
        }

  defstruct [:email, :role]

  field :email, 1, type: :string
  field :role, 2, type: Google.Cloud.Support.Common.SupportRole.Role, enum: true
end

defmodule Google.Cloud.Support.Common.Comment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          author: String.t(),
          name: String.t()
        }

  defstruct [:text, :create_time, :author, :name]

  field :text, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :author, 3, type: :string
  field :name, 4, type: :string
end

defmodule Google.Cloud.Support.Common.IssueTaxonomy.Component do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          languages: [String.t()],
          template: String.t(),
          subcomponents: [Google.Cloud.Support.Common.IssueTaxonomy.Component.t()]
        }

  defstruct [:display_name, :languages, :template, :subcomponents]

  field :display_name, 1, type: :string
  field :languages, 2, repeated: true, type: :string
  field :template, 3, type: :string

  field :subcomponents, 4,
    repeated: true,
    type: Google.Cloud.Support.Common.IssueTaxonomy.Component
end

defmodule Google.Cloud.Support.Common.IssueTaxonomy.Category.ComponentsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Support.Common.IssueTaxonomy.Component.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Support.Common.IssueTaxonomy.Component
end

defmodule Google.Cloud.Support.Common.IssueTaxonomy.Category do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          components: %{
            String.t() => Google.Cloud.Support.Common.IssueTaxonomy.Component.t() | nil
          }
        }

  defstruct [:display_name, :components]

  field :display_name, 1, type: :string

  field :components, 2,
    repeated: true,
    type: Google.Cloud.Support.Common.IssueTaxonomy.Category.ComponentsEntry,
    map: true
end

defmodule Google.Cloud.Support.Common.IssueTaxonomy.CategoriesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Support.Common.IssueTaxonomy.Category.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Support.Common.IssueTaxonomy.Category
end

defmodule Google.Cloud.Support.Common.IssueTaxonomy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          categories: %{
            String.t() => Google.Cloud.Support.Common.IssueTaxonomy.Category.t() | nil
          }
        }

  defstruct [:categories]

  field :categories, 1,
    repeated: true,
    type: Google.Cloud.Support.Common.IssueTaxonomy.CategoriesEntry,
    map: true
end
