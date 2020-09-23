const db = require('../data/db-config')

module.exports ={
    find,
    findById,
    add,
    findSteps,
    addStep,
    update,
    remove
}

function find () {
    return db('schemes')
}

function findById(id) {

    return db('schemes').where({ id }).first()
}

function add (schemeData){
    return db('schemes').insert(schemeData)
}

function findSteps(id){
    return db('schemes')
        .join('steps','schemes.id','steps.scheme_id')
        .select('steps.id', 'schemes.scheme_name', 'steps.instructions')
        .where({ scheme_id: id })
    }

function addStep (stepData,id) {
    return db('schemes')
}

function update(changes,id){
    return db('schemes')
}

function remove(id){
    return db('schemes')
}