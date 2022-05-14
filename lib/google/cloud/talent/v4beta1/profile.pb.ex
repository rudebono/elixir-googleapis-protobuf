defmodule Google.Cloud.Talent.V4beta1.Resume.ResumeType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :RESUME_TYPE_UNSPECIFIED, 0
  field :HRXML, 1
  field :OTHER_RESUME_TYPE, 2
end
defmodule Google.Cloud.Talent.V4beta1.Phone.PhoneType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Talent.V4beta1.CustomAttribute
end
defmodule Google.Cloud.Talent.V4beta1.Profile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Talent.V4beta1.AvailabilitySignalType, enum: true
  field :last_update_time, 2, type: Google.Protobuf.Timestamp, json_name: "lastUpdateTime"
  field :filter_satisfied, 3, type: Google.Protobuf.BoolValue, json_name: "filterSatisfied"
end
defmodule Google.Cloud.Talent.V4beta1.Resume do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :structured_resume, 1, type: :string, json_name: "structuredResume"

  field :resume_type, 2,
    type: Google.Cloud.Talent.V4beta1.Resume.ResumeType,
    json_name: "resumeType",
    enum: true
end
defmodule Google.Cloud.Talent.V4beta1.PersonName.PersonStructuredName do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :given_name, 1, type: :string, json_name: "givenName"
  field :preferred_name, 6, type: :string, json_name: "preferredName"
  field :middle_initial, 2, type: :string, json_name: "middleInitial"
  field :family_name, 3, type: :string, json_name: "familyName"
  field :suffixes, 4, repeated: true, type: :string
  field :prefixes, 5, repeated: true, type: :string
end
defmodule Google.Cloud.Talent.V4beta1.PersonName do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :usage, 1, type: Google.Cloud.Talent.V4beta1.ContactInfoUsage, enum: true
  field :email_address, 2, type: :string, json_name: "emailAddress"
end
defmodule Google.Cloud.Talent.V4beta1.Phone do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :usage, 1, type: Google.Cloud.Talent.V4beta1.ContactInfoUsage, enum: true
  field :type, 2, type: Google.Cloud.Talent.V4beta1.Phone.PhoneType, enum: true
  field :number, 3, type: :string
  field :when_available, 4, type: :string, json_name: "whenAvailable"
end
defmodule Google.Cloud.Talent.V4beta1.PersonalUri do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :uri, 1, type: :string
end
defmodule Google.Cloud.Talent.V4beta1.AdditionalContactInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :usage, 1, type: Google.Cloud.Talent.V4beta1.ContactInfoUsage, enum: true
  field :name, 2, type: :string
  field :contact_id, 3, type: :string, json_name: "contactId"
end
defmodule Google.Cloud.Talent.V4beta1.EmploymentRecord do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :degree_type, 1,
    type: Google.Cloud.Talent.V4beta1.DegreeType,
    json_name: "degreeType",
    enum: true

  field :degree_name, 2, type: :string, json_name: "degreeName"
  field :fields_of_study, 3, repeated: true, type: :string, json_name: "fieldsOfStudy"
end
defmodule Google.Cloud.Talent.V4beta1.Activity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
