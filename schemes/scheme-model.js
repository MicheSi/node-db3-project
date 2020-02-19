const db = require('../data/db-config');

module.exports = {
    find,
    findById,
    findSteps,
    add,
    remove
};

function find() {
    return db('schemes');
}

function findById(id) {
    return db('schemes')
    .where({ id })
    .first();
}

function findSteps(id) {
    return db('steps as st')
    .join('schemes as s', 's.id', 'st.scheme_id')
    .select('st.id', 's.scheme_name', 'st.step_number', 's.instructions')
    .where('scheme_id', id)
}

