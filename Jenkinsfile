@Library('libpipelines@master') _

hose {
    EMAIL = 'qa'
    MODULE = 'marathon-lb-sec'
    DEVTIMEOUT = 20
    RELEASETIMEOUT = 20
    REPOSITORY = 'github.com/marathon-lb-sec'    
    PKGMODULESNAMES = ['marathon-lb-sec']

    DEV = { config ->
        doDocker(config)
    }
}
