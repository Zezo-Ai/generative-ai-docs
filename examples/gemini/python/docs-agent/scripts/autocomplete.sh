_script()
{
  local cur preset_list

  preset_list="
  agent
  --help
  backup-chroma
  benchmark
  chatbot
  --hostname
  --port
  --debug
  --app_mode
  web
  full
  widget
  widget-pro
  experimental
  --enable_show_logs
  --enable_logs_to_markdown
  --config_file
  --product
  chunk
  cleanup-dev
  delete-corpus
  get-all-docs
  helpme
  --new
  --cont
  --file
  --allfiles
  --perfile
  --response_type
  json
  x.enum
  text
  list-corpora
  open-corpus
  populate
  posix
  remove-corpus-permission
  runtask
  share-corpus
  --name
  --email
  --role
  --config_file
  show-config
  show-session
  tellme
  write-logs-to-csv
  runtask
  --task
  --model
  --custom_input
  --plaintext
  --force
  --task_config
  CheckCommitForDocUpdate
  ExtractWorkflows
  GenerateDocSet
  DevSiteYAMLGenerator
  HelpPolishPrompts
  DraftReleaseNotes
  ExamineChangesBetweenTwoCommits
  ReviseContentStructure
  IndexPageGenerator
  DraftPSA
  PreparePodcasteFromDir
  DescribeImages
  DescribeImagesWithoutMarkdown
  DescribeImagesFromDoc
  gemini-2.5-flash-preview-04-17
  gemini-2.5-pro-preview-05-06
  gemini-2.0-flash
  gemini-1.5-flash
  gemini-1.5-pro
  models/gemini-2.0-flash
  models/gemini-1.5-flash
  models/gemini-1.5-flash-latest
  models/gemini-1.5-flash-001
  models/gemini-1.5-flash-002
  models/gemini-1.5-flash-8b
  models/gemini-1.5-flash-8b-latest
  models/gemini-1.5-flash-8b-001
  models/gemini-1.5-pro
  models/gemini-1.5-pro-latest
  models/gemini-1.5-pro-001
  models/gemini-1.5-pro-002
  models/gemini-1.5-pro-exp-0827
  models/gemini-1.0-pro
  models/gemini-1.0-pro-latest
  models/gemini-1.0-pro-001
  models/aqa
  "

  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  COMPREPLY=( $(compgen -W "${preset_list}" -- ${cur}) )

  return 0
}
complete -o filenames -o nospace -o default -F _script agent

