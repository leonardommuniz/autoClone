import shell from "shelljs"

async function clonnerRepository(githubUserName, githubRepository){
    await shell.exec(`./scripts/cloneRepository.sh ${githubUserName} ${githubRepository}`)
}

export {clonnerRepository}