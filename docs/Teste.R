


# cghion/01_TCC_R4DS2

"~/../../Downloads/Documents/A - Trabalho/00 Estudos/9900-Estatistica/001-Cursos/"


usethis::create_project("../../../cghion/Downloads/Documents/A - Trabalho/00 Estudos/9900-Estatistica/001-Cursos/10-TCC_09-R4DS2")
# √ Creating '../../../cghion/Downloads/Documents/A - Trabalho/00 Estudos/9900-Estatistica/001-Cursos/10-TCC_09-R4DS2/'
# √ Setting active project to 'C:/Users/cghion/Downloads/Documents/A - Trabalho/00 Estudos/9900-Estatistica/001-Cursos/10-TCC_09-R4DS2'
# √ Creating 'R/'
# √ Writing '10-TCC_09-R4DS2.Rproj'
# √ Adding '.Rproj.user' to '.gitignore'
# √ Opening 'C:/Users/cghion/Downloads/Documents/A - Trabalho/00 Estudos/9900-Estatistica/001-Cursos/10-TCC_09-R4DS2/' in new RStudio session
# √ Setting active project to '<no active project>'



#   Por se tratar da primeira vez que entro com R no GITHUB é necessário primeiro
# fazer o passo abaixo que é uma configuração global para depois fazer os passos
# específicos de cada projeto.
usethis::use_git_config(
  user.name = "cghion",
  user.email = "cassio.ghion@gmail.com"
)


#   Eu havia tentado o passo abaixo sem antes ter rodado o acima. Deu erro
usethis::use_git()
# > usethis::use_git()
# √ Setting active project to 'C:/Users/cghion/Downloads/Documents/A - Trabalho/00 Estudos/9900-Estatistica/001-Cursos/10-TCC_09-R4DS2'
# √ Initialising Git repo
# √ Adding '.Rhistory', '.Rdata', '.httr-oauth', '.DS_Store' to '.gitignore'
# There are 2 uncommitted files:
#   * '.gitignore'
# * '10-TCC_09-R4DS2.Rproj'
# Is it ok to commit them?
#
#   1: Yes
# 2: Negative
# 3: No way
#
# Selection: 1
# √ Adding files
# √ Making a commit with message 'Initial commit'
# Error in libgit2::git_signature_default :
#   config value 'user.name' was not found

#   Então eu tentei novamente. Veja o resultado.
# > usethis::use_git()
# There are 2 uncommitted files:
#   * '.gitignore'
# * '10-TCC_09-R4DS2.Rproj'
# Is it ok to commit them?
#
#   1: Negative
# 2: Absolutely
# 3: Absolutely not
#
# Selection: 2
# √ Adding files
# √ Making a commit with message 'Initial commit'

#   Tentei adicionar o GitHub sem antes ter feito o passo do PAT. Deu erro.
#   Isso aconteceu porque foi a primeira vez que estou conectando-me ao GitHub.
usethis::use_github()
# > usethis::use_github()
# i Defaulting to 'https' Git protocol
# √ Checking that current branch is default branch ('master')
# Erro: Unable to discover a GitHub personal access token
# A token is required in order to create and push to a new repo
#
# Call `gh_token_help()` for help configuring a token


#    Criando o PAT.
usethis::github_token()
# > usethis::github_token()
# Erro: `github_token()` was deprecated in usethis 2.0.0 and is now defunct.
# Call `gh::gh_token()` to retrieve a GitHub personal access token
# Call `gh_token_help()` if you need help getting or configuring your token
usethis::create_github_token()
#   Ele abre o github no navegador padrão. Tem que logar e ele entra automaticamente
# na página "New personal access token", endereço "https://github.com/settings/tokens/new?scopes=repo,user,gist,workflow&description=R:GITHUB_PAT"
# caminho "Settings/Developer settings" igualzinho demonstrado no vídeo.
#   Depois é só checar as configuração que em princípio não aprendemos a alterar,
# criar o token e trazer para o R. O nome do meu token aparece no primeiro
# quadro desta página antes de clicar em criar token. Meu token tem nome
# "R:GITHUB_PAT"

#   > usethis::create_github_token()
# * Call `gitcreds::gitcreds_set()` to register this token in the local Git credential store
# It is also a great idea to store this token in any password-management software that you use
# √ Opening URL 'https://github.com/settings/tokens/new?scopes=repo,user,gist,workflow&description=R:GITHUB_PAT'
# > gitcreds::gitcreds_set()
#
#
# ? Enter password or token: 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
# -> Adding new credentials...
# -> Removing credetials from cache...
# -> Done.


usethis::use_github()
# > usethis::use_github()
# √ Checking that current branch is default branch ('master')
# √ Creating GitHub repository 'cghion/10-TCC_09-R4DS2'
# Error in gh_process_response(raw) :
#   GitHub API error (404):
#   Message: Not Found
# Read more at https://docs.github.com/rest/reference/repos#create-a-repository-for-the-authenticated-user
#
# URL not found: https://api.github.com/user/repos
# Type .Last.error.trace to see where the error occured



gitcreds::gitcreds_set()
usethis::use_github()

#Teste se subiu o novo
