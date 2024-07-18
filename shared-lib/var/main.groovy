pipeline{
    agent(any)
    stages{
        stage("Even or odd"){
            steps{
                // println(evenOrOdd(env.BUILD_NUMBER))
                setBuildName("${evenOrOdd(env.BUILD_NUMBER)}")
            }
        }
    }
}

def evenOrOdd(buildNum){
    if(buildNum % 2 == 0){
        return "Even"
    }else{
        return "Odd"
    }
}