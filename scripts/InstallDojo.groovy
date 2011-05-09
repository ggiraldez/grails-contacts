includeTargets << grailsScript("_GrailsSettings")
includeTargets << grailsScript("_GrailsEvents")

def version = "1.6.0"
def srcHref = "http://download.dojotoolkit.org/release-${version}/dojo-release-${version}-src.zip"
def downloadDir = "${grailsWorkDir}/download"
def jsDir = "${basedir}/web-app/js"

target(downloadDojoSDK: "Downloads Dojo SDK") {
    event("StatusUpdate", ["\nDownloading Dojo ${version} source files.\n"])
    Ant.sequential {
        mkdir(dir: downloadDir)
        get(dest: "${downloadDir}/dojo-release-${version}-src.zip", src: "${srcHref}", verbose: true, usetimestamp: true)
        unzip(dest: "${jsDir}", src: "${downloadDir}/dojo-release-${version}-src.zip")
    }
}


target(main: "Download and install Dojo ${version} into web-app directory") {
    depends(downloadDojoSDK)
}

setDefaultTarget(main)

