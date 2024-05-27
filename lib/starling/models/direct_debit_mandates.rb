module Starling
  class DirectDebitMandatesResource < Resource

    # Required scope: mandate:read
    def list
      response = get_request("direct-debit/mandates")
      Collection.from_response(response, type: DirectDebitMandate, key: "mandates")
    end

    # Required scope: mandate:read
    def retrieve(uid:)
      DirectDebitMandate.new get_request("direct-debit/mandates/#{uid}").body
    end

    # Required scope: mandate:read
    def payments(uid:, since:)
      response = get_request("direct-debit/mandates/#{uid}/payments", params: {since: since})
      Collection.from_response(response, type: DirectDebitPayment, key: "directDebitPayments")
    end

    # Required scope: mandate:delete
    def cancel(uid:)
      delete_request("direct-debit/mandates/#{uid}")
    end

  end
end
