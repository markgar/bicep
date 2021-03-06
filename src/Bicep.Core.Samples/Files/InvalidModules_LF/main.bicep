﻿module nonExistentFileRef './nonExistent.bicep' = {

}

// we should only look this file up once, but should still return the same failure
module nonExistentFileRefDuplicate './nonExistent.bicep' = {

}

// we should only look this file up once, but should still return the same failure
module nonExistentFileRefEquivalentPath 'abc/def/../../nonExistent.bicep' = {

}

module moduleWithoutPath = {

}

// missing identifier #completionTest(7) -> empty
module 

// #completionTest(24,25) -> object
module missingValue '' = 

var interp = 'hello'
module moduleWithInterpPath './${interp}.bicep' = {

}

module moduleWithSelfCycle './main.bicep' = {

}

module './main.bicep' = {

}

module modANoName './modulea.bicep' = {

}

module modANoInputs './modulea.bicep' = {
  name: 'modANoInputs'
}

module modAEmptyInputs './modulea.bicep' = {
  name: 'modANoInputs'
  params: {

  }
}

module modAUnspecifiedInputs './modulea.bicep' = {
  name: 'modAUnspecifiedInputs'
  params: {
    stringParamB: ''
    objParam: {}
    objArray: []
    unspecifiedInput: ''
  }
}

var unspecifiedOutput = modAUnspecifiedInputs.outputs.test

module moduleWithBackslash 'child\\file.bicep' = {
  
}

module modCycle './cycle.bicep' = {
  
}