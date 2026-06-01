window.CustomComponentsScript = window.CustomComponentsScript || {}
window.CustomComponentsScript["1a3864de-9f47-4dda-803a-9e0372a04d09-3c3c8c36-2070-497a-a7a4-96d2e43cdc45"] = async (document, user, map, toc, currentPage) => {
(function run() {
  if (window.FluidTopicsReaderService && FluidTopicsReaderService.searchInDocument) {
    FluidTopicsReaderService.searchInDocument("");
    return;
  }
  setTimeout(run, 50);
})();
}