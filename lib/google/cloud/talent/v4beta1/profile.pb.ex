defmodule Google.Cloud.Talent.V4beta1.Resume.ResumeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RESUME_TYPE_UNSPECIFIED | :HRXML | :OTHER_RESUME_TYPE

  field :RESUME_TYPE_UNSPECIFIED, 0
  field :HRXML, 1
  field :OTHER_RESUME_TYPE, 2
end
defmodule Google.Cloud.Talent.V4beta1.Phone.PhoneType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PHONE_TYPE_UNSPECIFIED
          | :LANDLINE
          | :MOBILE
          | :FAX
          | :PAGER
          | :TTY_OR_TDD
          | :VOICEMAIL
          | :VIRTUAL
          | :VOIP
          | :MOBILE_OR_LANDLINE

  field :PHONE_TYPE_UNSPECIFIED, 0
  field :LANDLINE, 1
  field :MOBILE, 2
  field :FAX, 3
  field :PAGER, 4
  field :TTY_OR_TDD, 5
  field :VOICEMAIL, 6
  field :VIRTUAL, 7
  field :VOIP, 8
  field :MOBILE_OR_LANDLINE, 9
end
defmodule Google.Cloud.Talent.V4beta1.Profile.CustomAttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Talent.V4beta1.CustomAttribute.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Talent.V4beta1.CustomAttribute
end
defmodule Google.Cloud.Talent.V4beta1.Profile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          external_id: String.t(),
          source: String.t(),
          uri: String.t(),
          group_id: String.t(),
          is_hirable: Google.Protobuf.BoolValue.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          candidate_update_time: Google.Protobuf.Timestamp.t() | nil,
          resume_update_time: Google.Protobuf.Timestamp.t() | nil,
          resume: Google.Cloud.Talent.V4beta1.Resume.t() | nil,
          person_names: [Google.Cloud.Talent.V4beta1.PersonName.t()],
          addresses: [Google.Cloud.Talent.V4beta1.Address.t()],
          email_addresses: [Google.Cloud.Talent.V4beta1.Email.t()],
          phone_numbers: [Google.Cloud.Talent.V4beta1.Phone.t()],
          personal_uris: [Google.Cloud.Talent.V4beta1.PersonalUri.t()],
          additional_contact_info: [Google.Cloud.Talent.V4beta1.AdditionalContactInfo.t()],
          employment_records: [Google.Cloud.Talent.V4beta1.EmploymentRecord.t()],
          education_records: [Google.Cloud.Talent.V4beta1.EducationRecord.t()],
          skills: [Google.Cloud.Talent.V4beta1.Skill.t()],
          activities: [Google.Cloud.Talent.V4beta1.Activity.t()],
          publications: [Google.Cloud.Talent.V4beta1.Publication.t()],
          patents: [Google.Cloud.Talent.V4beta1.Patent.t()],
          certifications: [Google.Cloud.Talent.V4beta1.Certification.t()],
          applications: [String.t()],
          assignments: [String.t()],
          custom_attributes: %{
            String.t() => Google.Cloud.Talent.V4beta1.CustomAttribute.t() | nil
          },
          processed: boolean,
          keyword_snippet: String.t(),
          availability_signals: [Google.Cloud.Talent.V4beta1.AvailabilitySignal.t()],
          derived_addresses: [Google.Cloud.Talent.V4beta1.Location.t()]
        }

  defstruct name: "",
            external_id: "",
            source: "",
            uri: "",
            group_id: "",
            is_hirable: nil,
            create_time: nil,
            update_time: nil,
            candidate_update_time: nil,
            resume_update_time: nil,
            resume: nil,
            person_names: [],
            addresses: [],
            email_addresses: [],
            phone_numbers: [],
            personal_uris: [],
            additional_contact_info: [],
            employment_records: [],
            education_records: [],
            skills: [],
            activities: [],
            publications: [],
            patents: [],
            certifications: [],
            applications: [],
            assignments: [],
            custom_attributes: %{},
            processed: false,
            keyword_snippet: "",
            availability_signals: [],
            derived_addresses: []

  field :name, 1, type: :string
  field :external_id, 2, type: :string, json_name: "externalId"
  field :source, 3, type: :string
  field :uri, 4, type: :string
  field :group_id, 5, type: :string, json_name: "groupId"
  field :is_hirable, 6, type: Google.Protobuf.BoolValue, json_name: "isHirable"
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 8, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :candidate_update_time, 67,
    type: Google.Protobuf.Timestamp,
    json_name: "candidateUpdateTime"

  field :resume_update_time, 68, type: Google.Protobuf.Timestamp, json_name: "resumeUpdateTime"
  field :resume, 53, type: Google.Cloud.Talent.V4beta1.Resume

  field :person_names, 11,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.PersonName,
    json_name: "personNames"

  field :addresses, 12, repeated: true, type: Google.Cloud.Talent.V4beta1.Address

  field :email_addresses, 13,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.Email,
    json_name: "emailAddresses"

  field :phone_numbers, 14,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.Phone,
    json_name: "phoneNumbers"

  field :personal_uris, 15,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.PersonalUri,
    json_name: "personalUris"

  field :additional_contact_info, 16,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.AdditionalContactInfo,
    json_name: "additionalContactInfo"

  field :employment_records, 17,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.EmploymentRecord,
    json_name: "employmentRecords"

  field :education_records, 18,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.EducationRecord,
    json_name: "educationRecords"

  field :skills, 19, repeated: true, type: Google.Cloud.Talent.V4beta1.Skill
  field :activities, 20, repeated: true, type: Google.Cloud.Talent.V4beta1.Activity
  field :publications, 21, repeated: true, type: Google.Cloud.Talent.V4beta1.Publication
  field :patents, 22, repeated: true, type: Google.Cloud.Talent.V4beta1.Patent
  field :certifications, 23, repeated: true, type: Google.Cloud.Talent.V4beta1.Certification
  field :applications, 47, repeated: true, type: :string, deprecated: false
  field :assignments, 48, repeated: true, type: :string, deprecated: false

  field :custom_attributes, 26,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.Profile.CustomAttributesEntry,
    json_name: "customAttributes",
    map: true

  field :processed, 27, type: :bool, deprecated: false
  field :keyword_snippet, 28, type: :string, json_name: "keywordSnippet", deprecated: false

  field :availability_signals, 70,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.AvailabilitySignal,
    json_name: "availabilitySignals",
    deprecated: false

  field :derived_addresses, 64,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.Location,
    json_name: "derivedAddresses",
    deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.AvailabilitySignal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Talent.V4beta1.AvailabilitySignalType.t(),
          last_update_time: Google.Protobuf.Timestamp.t() | nil,
          filter_satisfied: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct type: :AVAILABILITY_SIGNAL_TYPE_UNSPECIFIED,
            last_update_time: nil,
            filter_satisfied: nil

  field :type, 1, type: Google.Cloud.Talent.V4beta1.AvailabilitySignalType, enum: true
  field :last_update_time, 2, type: Google.Protobuf.Timestamp, json_name: "lastUpdateTime"
  field :filter_satisfied, 3, type: Google.Protobuf.BoolValue, json_name: "filterSatisfied"
end
defmodule Google.Cloud.Talent.V4beta1.Resume do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          structured_resume: String.t(),
          resume_type: Google.Cloud.Talent.V4beta1.Resume.ResumeType.t()
        }

  defstruct structured_resume: "",
            resume_type: :RESUME_TYPE_UNSPECIFIED

  field :structured_resume, 1, type: :string, json_name: "structuredResume"

  field :resume_type, 2,
    type: Google.Cloud.Talent.V4beta1.Resume.ResumeType,
    json_name: "resumeType",
    enum: true
end
defmodule Google.Cloud.Talent.V4beta1.PersonName.PersonStructuredName do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          given_name: String.t(),
          preferred_name: String.t(),
          middle_initial: String.t(),
          family_name: String.t(),
          suffixes: [String.t()],
          prefixes: [String.t()]
        }

  defstruct given_name: "",
            preferred_name: "",
            middle_initial: "",
            family_name: "",
            suffixes: [],
            prefixes: []

  field :given_name, 1, type: :string, json_name: "givenName"
  field :preferred_name, 6, type: :string, json_name: "preferredName"
  field :middle_initial, 2, type: :string, json_name: "middleInitial"
  field :family_name, 3, type: :string, json_name: "familyName"
  field :suffixes, 4, repeated: true, type: :string
  field :prefixes, 5, repeated: true, type: :string
end
defmodule Google.Cloud.Talent.V4beta1.PersonName do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          person_name:
            {:formatted_name, String.t()}
            | {:structured_name,
               Google.Cloud.Talent.V4beta1.PersonName.PersonStructuredName.t() | nil},
          preferred_name: String.t()
        }

  defstruct person_name: nil,
            preferred_name: ""

  oneof :person_name, 0

  field :formatted_name, 1, type: :string, json_name: "formattedName", oneof: 0

  field :structured_name, 2,
    type: Google.Cloud.Talent.V4beta1.PersonName.PersonStructuredName,
    json_name: "structuredName",
    oneof: 0

  field :preferred_name, 3, type: :string, json_name: "preferredName"
end
defmodule Google.Cloud.Talent.V4beta1.Address do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          address:
            {:unstructured_address, String.t()}
            | {:structured_address, Google.Type.PostalAddress.t() | nil},
          usage: Google.Cloud.Talent.V4beta1.ContactInfoUsage.t(),
          current: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct address: nil,
            usage: :CONTACT_INFO_USAGE_UNSPECIFIED,
            current: nil

  oneof :address, 0

  field :usage, 1, type: Google.Cloud.Talent.V4beta1.ContactInfoUsage, enum: true
  field :unstructured_address, 2, type: :string, json_name: "unstructuredAddress", oneof: 0

  field :structured_address, 3,
    type: Google.Type.PostalAddress,
    json_name: "structuredAddress",
    oneof: 0

  field :current, 4, type: Google.Protobuf.BoolValue
end
defmodule Google.Cloud.Talent.V4beta1.Email do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          usage: Google.Cloud.Talent.V4beta1.ContactInfoUsage.t(),
          email_address: String.t()
        }

  defstruct usage: :CONTACT_INFO_USAGE_UNSPECIFIED,
            email_address: ""

  field :usage, 1, type: Google.Cloud.Talent.V4beta1.ContactInfoUsage, enum: true
  field :email_address, 2, type: :string, json_name: "emailAddress"
end
defmodule Google.Cloud.Talent.V4beta1.Phone do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          usage: Google.Cloud.Talent.V4beta1.ContactInfoUsage.t(),
          type: Google.Cloud.Talent.V4beta1.Phone.PhoneType.t(),
          number: String.t(),
          when_available: String.t()
        }

  defstruct usage: :CONTACT_INFO_USAGE_UNSPECIFIED,
            type: :PHONE_TYPE_UNSPECIFIED,
            number: "",
            when_available: ""

  field :usage, 1, type: Google.Cloud.Talent.V4beta1.ContactInfoUsage, enum: true
  field :type, 2, type: Google.Cloud.Talent.V4beta1.Phone.PhoneType, enum: true
  field :number, 3, type: :string
  field :when_available, 4, type: :string, json_name: "whenAvailable"
end
defmodule Google.Cloud.Talent.V4beta1.PersonalUri do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string
end
defmodule Google.Cloud.Talent.V4beta1.AdditionalContactInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          usage: Google.Cloud.Talent.V4beta1.ContactInfoUsage.t(),
          name: String.t(),
          contact_id: String.t()
        }

  defstruct usage: :CONTACT_INFO_USAGE_UNSPECIFIED,
            name: "",
            contact_id: ""

  field :usage, 1, type: Google.Cloud.Talent.V4beta1.ContactInfoUsage, enum: true
  field :name, 2, type: :string
  field :contact_id, 3, type: :string, json_name: "contactId"
end
defmodule Google.Cloud.Talent.V4beta1.EmploymentRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_date: Google.Type.Date.t() | nil,
          end_date: Google.Type.Date.t() | nil,
          employer_name: String.t(),
          division_name: String.t(),
          address: Google.Cloud.Talent.V4beta1.Address.t() | nil,
          job_title: String.t(),
          job_description: String.t(),
          is_supervisor: Google.Protobuf.BoolValue.t() | nil,
          is_self_employed: Google.Protobuf.BoolValue.t() | nil,
          is_current: Google.Protobuf.BoolValue.t() | nil,
          job_title_snippet: String.t(),
          job_description_snippet: String.t(),
          employer_name_snippet: String.t()
        }

  defstruct start_date: nil,
            end_date: nil,
            employer_name: "",
            division_name: "",
            address: nil,
            job_title: "",
            job_description: "",
            is_supervisor: nil,
            is_self_employed: nil,
            is_current: nil,
            job_title_snippet: "",
            job_description_snippet: "",
            employer_name_snippet: ""

  field :start_date, 1, type: Google.Type.Date, json_name: "startDate"
  field :end_date, 2, type: Google.Type.Date, json_name: "endDate"
  field :employer_name, 3, type: :string, json_name: "employerName"
  field :division_name, 4, type: :string, json_name: "divisionName"
  field :address, 5, type: Google.Cloud.Talent.V4beta1.Address
  field :job_title, 6, type: :string, json_name: "jobTitle"
  field :job_description, 7, type: :string, json_name: "jobDescription"
  field :is_supervisor, 8, type: Google.Protobuf.BoolValue, json_name: "isSupervisor"
  field :is_self_employed, 9, type: Google.Protobuf.BoolValue, json_name: "isSelfEmployed"
  field :is_current, 10, type: Google.Protobuf.BoolValue, json_name: "isCurrent"
  field :job_title_snippet, 11, type: :string, json_name: "jobTitleSnippet", deprecated: false

  field :job_description_snippet, 12,
    type: :string,
    json_name: "jobDescriptionSnippet",
    deprecated: false

  field :employer_name_snippet, 13,
    type: :string,
    json_name: "employerNameSnippet",
    deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.EducationRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          degree:
            {:degree_description, String.t()}
            | {:structured_degree, Google.Cloud.Talent.V4beta1.Degree.t() | nil},
          start_date: Google.Type.Date.t() | nil,
          end_date: Google.Type.Date.t() | nil,
          expected_graduation_date: Google.Type.Date.t() | nil,
          school_name: String.t(),
          address: Google.Cloud.Talent.V4beta1.Address.t() | nil,
          description: String.t(),
          is_current: Google.Protobuf.BoolValue.t() | nil,
          school_name_snippet: String.t(),
          degree_snippet: String.t()
        }

  defstruct degree: nil,
            start_date: nil,
            end_date: nil,
            expected_graduation_date: nil,
            school_name: "",
            address: nil,
            description: "",
            is_current: nil,
            school_name_snippet: "",
            degree_snippet: ""

  oneof :degree, 0

  field :start_date, 1, type: Google.Type.Date, json_name: "startDate"
  field :end_date, 2, type: Google.Type.Date, json_name: "endDate"
  field :expected_graduation_date, 3, type: Google.Type.Date, json_name: "expectedGraduationDate"
  field :school_name, 4, type: :string, json_name: "schoolName"
  field :address, 5, type: Google.Cloud.Talent.V4beta1.Address
  field :degree_description, 6, type: :string, json_name: "degreeDescription", oneof: 0

  field :structured_degree, 7,
    type: Google.Cloud.Talent.V4beta1.Degree,
    json_name: "structuredDegree",
    oneof: 0

  field :description, 8, type: :string
  field :is_current, 9, type: Google.Protobuf.BoolValue, json_name: "isCurrent"
  field :school_name_snippet, 10, type: :string, json_name: "schoolNameSnippet", deprecated: false
  field :degree_snippet, 11, type: :string, json_name: "degreeSnippet", deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.Degree do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          degree_type: Google.Cloud.Talent.V4beta1.DegreeType.t(),
          degree_name: String.t(),
          fields_of_study: [String.t()]
        }

  defstruct degree_type: :DEGREE_TYPE_UNSPECIFIED,
            degree_name: "",
            fields_of_study: []

  field :degree_type, 1,
    type: Google.Cloud.Talent.V4beta1.DegreeType,
    json_name: "degreeType",
    enum: true

  field :degree_name, 2, type: :string, json_name: "degreeName"
  field :fields_of_study, 3, repeated: true, type: :string, json_name: "fieldsOfStudy"
end
defmodule Google.Cloud.Talent.V4beta1.Activity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          description: String.t(),
          uri: String.t(),
          create_date: Google.Type.Date.t() | nil,
          update_date: Google.Type.Date.t() | nil,
          team_members: [String.t()],
          skills_used: [Google.Cloud.Talent.V4beta1.Skill.t()],
          activity_name_snippet: String.t(),
          activity_description_snippet: String.t(),
          skills_used_snippet: [String.t()]
        }

  defstruct display_name: "",
            description: "",
            uri: "",
            create_date: nil,
            update_date: nil,
            team_members: [],
            skills_used: [],
            activity_name_snippet: "",
            activity_description_snippet: "",
            skills_used_snippet: []

  field :display_name, 1, type: :string, json_name: "displayName"
  field :description, 2, type: :string
  field :uri, 3, type: :string
  field :create_date, 4, type: Google.Type.Date, json_name: "createDate"
  field :update_date, 5, type: Google.Type.Date, json_name: "updateDate"
  field :team_members, 6, repeated: true, type: :string, json_name: "teamMembers"

  field :skills_used, 7,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.Skill,
    json_name: "skillsUsed"

  field :activity_name_snippet, 8,
    type: :string,
    json_name: "activityNameSnippet",
    deprecated: false

  field :activity_description_snippet, 9,
    type: :string,
    json_name: "activityDescriptionSnippet",
    deprecated: false

  field :skills_used_snippet, 10,
    repeated: true,
    type: :string,
    json_name: "skillsUsedSnippet",
    deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.Publication do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authors: [String.t()],
          title: String.t(),
          description: String.t(),
          journal: String.t(),
          volume: String.t(),
          publisher: String.t(),
          publication_date: Google.Type.Date.t() | nil,
          publication_type: String.t(),
          isbn: String.t()
        }

  defstruct authors: [],
            title: "",
            description: "",
            journal: "",
            volume: "",
            publisher: "",
            publication_date: nil,
            publication_type: "",
            isbn: ""

  field :authors, 1, repeated: true, type: :string
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :journal, 4, type: :string
  field :volume, 5, type: :string
  field :publisher, 6, type: :string
  field :publication_date, 7, type: Google.Type.Date, json_name: "publicationDate"
  field :publication_type, 8, type: :string, json_name: "publicationType"
  field :isbn, 9, type: :string
end
defmodule Google.Cloud.Talent.V4beta1.Patent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          inventors: [String.t()],
          patent_status: String.t(),
          patent_status_date: Google.Type.Date.t() | nil,
          patent_filing_date: Google.Type.Date.t() | nil,
          patent_office: String.t(),
          patent_number: String.t(),
          patent_description: String.t(),
          skills_used: [Google.Cloud.Talent.V4beta1.Skill.t()]
        }

  defstruct display_name: "",
            inventors: [],
            patent_status: "",
            patent_status_date: nil,
            patent_filing_date: nil,
            patent_office: "",
            patent_number: "",
            patent_description: "",
            skills_used: []

  field :display_name, 1, type: :string, json_name: "displayName"
  field :inventors, 2, repeated: true, type: :string
  field :patent_status, 3, type: :string, json_name: "patentStatus"
  field :patent_status_date, 4, type: Google.Type.Date, json_name: "patentStatusDate"
  field :patent_filing_date, 5, type: Google.Type.Date, json_name: "patentFilingDate"
  field :patent_office, 6, type: :string, json_name: "patentOffice"
  field :patent_number, 7, type: :string, json_name: "patentNumber"
  field :patent_description, 8, type: :string, json_name: "patentDescription"

  field :skills_used, 9,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.Skill,
    json_name: "skillsUsed"
end
