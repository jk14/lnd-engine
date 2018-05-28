const getInvoice = require('./get-invoice')
const getInvoices = require('./get-invoices')
const getPublicKey = require('./get-public-key')
const getTotalBalance = require('./get-total-balance')
const getConfirmedBalanace = require('./get-confirmed-balance')
const getUnconfirmedBalance = require('./get-unconfirmed-balance')
const getPeers = require('./get-peers')
const createChannel = require('./create-channel')
const createInvoice = require('./create-invoice')
const createNewAddress = require('./create-new-address')
const isAvailable = require('./is-available')

module.exports = {
  getInvoice,
  getInvoices,
  getPublicKey,
  isAvailable,
  getTotalBalance,
  getConfirmedBalanace,
  getUnconfirmedBalance,
  createChannel,
  createInvoice,
  getPeers,
  createNewAddress
}
