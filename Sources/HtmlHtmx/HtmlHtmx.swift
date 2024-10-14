import Html

private func dictToJson(_ dict: [String: String]) -> String {
  let inner =
    dict
    .map({ key, val in "\"\(key)\":\"\(val)\"" })
    .joined(separator: ",")
  return "{\(inner)}"
}

extension Html.Attribute {
  /// issues a GET to the specified URL
  public static func hxGet(_ url: String) -> Self { .init("hx-get", url) }

  /// issues a POST to the specified URL
  public static func hxPost(_ url: String) -> Self { .init("hx-post", url) }

  /// push a URL into the browser location bar to create history
  public static func hxPushUrl(_ value: HxPushUrl) -> Self {
    .init("hx-push-url", value.description)
  }

  /// select content to swap in from a response
  public static func hxSelect(_ selector: String) -> Self { .init("hx-select", selector) }

  /// select content to swap in from a response, somewhere other than the target (out of band)
  public static func hxSelectOob(_ selector: String) -> Self { .init("hx-select-oob", selector) }

  /// controls how content will swap in (outerHTML, beforeend, afterend, …)
  public static func hxSwap(_ value: HxSwap = .innerHTML) -> Self {
    .init("hx-swap", value.description)
  }

  /// controls how content will swap in (outerHTML, beforeend, afterend, …)
  public static func hxSwap(raw rawValue: String) -> Self { .init("hx-swap", rawValue) }

  /// mark element to swap in from a response (out of band)
  public static func hxSwapOob(_ value: HxSwap = .outerHTML) -> Self {
    .init("hx-swap-oob", value.description)
  }

  /// mark element to swap in from a response (out of band)
  public static func hxSwapOob(raw rawValue: String) -> Self { .init("hx-swap-oob", rawValue) }

  /// specifies the target element to be swapped
  public static func hxTarget(_ target: String) -> Self { .init("hx-target", target) }

  /// specifies the event that triggers the request
  public static func hxTrigger(_ event: String) -> Self { .init("hx-trigger", event) }

  /// add values to submit with the request (JSON format)
  public static func hxVals(_ rawValue: String) -> Self { .init("hx-vals", rawValue) }

  /// add progressive enhancement for links and forms
  public static func hxBoost() -> Self { .init("hx-boost", "true") }

  /// shows a confirm() dialog before issuing a request
  public static func hxConfirm(_ prompt: String) -> Self { .init("hx-confirm", prompt) }

  /// issues a DELETE to the specified URL
  public static func hxDelete(_ url: String) -> Self { .init("hx-delete", url) }

  /// disables htmx processing for the given node and any children nodes
  public static func hxDisable() -> Self { .init("hx-disable", nil) }

  /// adds the disabled attribute to the specified elements while a request is in flight
  public static func hxDisabledElt(_ selector: String) -> Self {
    .init("hx-disabled-elt", selector)
  }

  /// control and disable automatic attribute inheritance for child nodes
  public static func hxDisinherit(_ attributes: [String] = []) -> Self {
    .init(
      "hx-disinherit",
      attributes.count == 0 ? "*" : attributes.joined(separator: " ")
    )
  }

  /// control and disable automatic attribute inheritance for child nodes
  public static func hxDisinherit(_ attributes: String...) -> Self {
    hxDisinherit(attributes)
  }

  /// changes the request encoding type
  public static func hxEncoding() -> Self { .init("hx-disinherit", "multipart/form-data") }

  /// extensions to use for this element
  public static func hxExt(_ rawValue: String) -> Self { .init("hx-ext", rawValue) }

  /// adds to the headers that will be submitted with the request
  public static func hxHeaders(raw rawValue: String) -> Self { .init("hx-headers", rawValue) }

  /// adds to the headers that will be submitted with the request
  public static func hxHeaders(_ headers: [String: String]) -> Self {
    .init("hx-headers", dictToJson(headers))
  }

  /// prevent sensitive data being saved to the history cache
  public static func hxHistory() -> Self { .init("hx-history", "false") }

  /// the element to snapshot and restore during history navigation
  public static func hxHistoryElt() -> Self { .init("hx-history-elt", nil) }

  /// include additional data in requests
  public static func hxInclude(_ rawValue: String) -> Self { .init("hx-include", rawValue) }

  /// the element to put the htmx-request class on during the request
  public static func hxIndicator(_ selector: String) -> Self { .init("hx-indicator", selector) }

  /// filters the parameters that will be submitted with a request
  public static func hxParams(_ params: HxParams) -> Self { .init("hx-params", params.description) }

  /// issues a PATCH to the specified URL
  public static func hxPatch(_ url: String) -> Self { .init("hx-patch", url) }

  /// specifies elements to keep unchanged between requests
  public static func hxPreserve() -> Self { .init("hx-preserve", nil) }

  /// shows a prompt() before submitting a request
  public static func hxPrompt(_ prompt: String) -> Self { .init("hx-prompt", prompt) }

  /// issues a PUT to the specified URL
  public static func hxPut(_ url: String) -> Self { .init("hx-put", url) }

  /// replace the URL in the browser location bar
  public static func hxReplaceUrl(_ value: HxReplaceUrl) -> Self {
    .init("hx-replace-url", value.description)
  }

  /// configures various aspects of the request
  public static func hxRequest(raw rawValue: String) -> Self { .init("hx-request", rawValue) }

  /// configures various aspects of the request
  public static func hxRequest(_ value: HxRequest) -> Self {
    .init("hx-request", value.description)
  }

  /// control how requests made by different elements are synchronized
  public static func hxSync(raw rawValue: String) -> Self { .init("hx-sync", rawValue) }

  /// force elements to validate themselves before a request
  public static func hxValidate() -> Self { .init("hx-validate", "true") }
}
