document.addEventListener("DOMContentLoaded", function () {
    // Your code to execute after the page loads
    var script = document.createElement("script");
    script.type = "text/javascript";
    script.src =
      "https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"; // use the location of your MathJax
    document.head.append(script);
    var script2 = document.createElement("script");
    script2.type = "text/plain";
    script2.classList.add("optanon-category-C0004");
    script2.textContent =
      "(function(d,b,a,s,e){ var t = b.createElement(a),fs = b.getElementsByTagName(a)[0]; t.async=1; t.id=e; t.src=s;fs.parentNode.insertBefore(t, fs); })(window,document,'script','https://tag.demandbase.com/2f0cf2679b1d58de.min.js','demandbase_js_lib');";
    document.head.append(script2);
  
    //script2.src = "https://cdn.cookielaw.org/scripttemplates/otSDKStub.js"; // use the location of your MathJax
    //script2.setAttribute("data-document-language", "true");
    //script2.setAttribute("data-domain-script", "018e385a-b0e8-78c4-aafd-aade1110ca89");
  
    //document.head.append(script2 );
  
    var script3 = document.createElement("script");
    script3.type = "text/javascript";
    script3.src = "https://cdn.cookielaw.org/scripttemplates/otSDKStub.js"; // use the location of your MathJax
    script3.setAttribute("data-document-language", "true");
    script3.setAttribute(
      "data-domain-script",
      "018e385a-b0e8-78c4-aafd-aade1110ca89-test",
    );
  
    document.head.append(script3);
  });
  
  let MathJaxLoaded = false;
  
  //Init the script once
  function initMathJax() {
    if (!MathJaxLoaded) {
      var script = document.createElement("script");
      script.type = "text/javascript";
      script.src =
        "https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS-MML_HTMLorMML"; // use the location of your MathJax
      document.head.append(script);
      MathJaxLoaded = true;
    }
  }
  
  //Function to wait for an element to exist
  function waitForElm(selector) {
    return new Promise((resolve) => {
      if (document.querySelector(selector)) {
        return resolve(document.querySelector(selector));
      }
  
      const observer = new MutationObserver(() => {
        if (document.querySelector(selector)) {
          resolve(document.querySelector(selector));
          observer.disconnect();
        }
      });
  
      observer.observe(document.body, {
        childList: true,
        subtree: true,
      });
    });
  }
  
  //Init Math Jax when a page opens
  document.addEventListener("ft:pageopening", function (event) {
    let error_message = document.getElementsByClassName("error-message");
    let rocm_button = document.getElementsByClassName("rocm-button");
    let ft_app = document.getElementsByTagName("ft-app-context");
    let locale = "en-US";
    if (ft_app && ft_app.length >= 1) {
      locale = ft_app[0].getAttribute("uilocale");
    }
    // Custom 403 page for target link (e.g. Internal-EPYC-Playbook)
    var url = window.location.href;
    var isTargetLink = url.indexOf("/r/en-US/Internal-Playbook") !== -1;
    if (error_message.length === 1 && isTargetLink) {
      var listHtml = "<ul><li><strong><a class='external-link' href='https://account.amd.com/en/forms/registration/tip/tip-epyc-internal-playbook.html' target='_blank' rel='nofollow noopener'>Fill this form</a></strong>.</li><li>You will receive an automatic confirmation email from epyc_internal_playbook@amd.com</li><li>Visit <a href='http://playbook' target='_blank' rel='nofollow noopener'>http://playbook</a> and log in using your nT ID on the AMD network (or VPN).</li><li>Note: You may need to clear your browser cache / cookies.</li></ul>";
      var contentDiv = document.createElement("div");
      contentDiv.setAttribute("style", "width: 100%; text-align: left; display: flex; justify-content: center; line-height: 30px;");
      contentDiv.innerHTML = listHtml;
      error_message[0].appendChild(contentDiv);
      return;
    }
    var isProcessorsLink = url.indexOf("/processors/") !== -1;
    if (error_message.length == 1 && rocm_button.length == 0) {
      //custom 403 page
        if (isProcessorsLink) {
          error_message[0].innerHTML = "<p>This content is restricted and requires you to&nbsp;<strong><a class='external-link' href='https://docs.amd.com/login' target='_blank' rel='nofollow noopener'>sign in</a></strong>.&nbsp; If you're logged in to AMD TIP, please contact your AMD representative.&nbsp; If you are an AMD employee, please register&nbsp;<strong><a class='external-link' href='https://account.amd.com/en/forms/registration/tip/tip-devhub-internal.html' target='_blank' rel='nofollow noopener'>here</a></strong>.</p>";
      } else {
        error_message[0].innerHTML = "<p>The document you are looking for has been moved or deleted.</p>";
      }
      let parent_node = error_message[0].parentElement;

      if (!isProcessorsLink) {
        var tipSearchHelp = document.createElement("p");
        tipSearchHelp.innerHTML = "To find its current location on AMD TIP, use this search field:";
        tipSearchHelp.setAttribute("style", "margin:0 0 8px; text-align:center; font-size:1.05em;");
        parent_node.appendChild(tipSearchHelp);
      }

      var amdTipDiv = document.createElement("div");
      amdTipDiv.setAttribute(
        "style",
        "display:flex; align-items:center; justify-content:center; gap:12px; flex-wrap:wrap; margin:-4px 0 14px; padding:4px 0 0;",
      );

      var amdTipButtonLabel = "AMD TIP Home";
      if (locale == "zh-CN") {
        amdTipButtonLabel = "AMD TIP 主页";
      } else if (locale == "ja-JP") {
        amdTipButtonLabel = "AMD TIP ホーム";
      }
      var amdTipButtonCandidates = parent_node.querySelectorAll("button, a");
      var amdTipButton = null;
      for (var amdTipIndex = 0; amdTipIndex < amdTipButtonCandidates.length; amdTipIndex++) {
        var amdTipCandidate = amdTipButtonCandidates[amdTipIndex];
        if (amdTipCandidate.textContent && amdTipCandidate.textContent.trim() === amdTipButtonLabel) {
          amdTipButton = amdTipCandidate;
          break;
        }
      }
      if (!amdTipButton) {
        amdTipButton = document.createElement("button");
        amdTipButton.innerHTML = amdTipButtonLabel;
        amdTipButton.classList.add("ft-btn");
        amdTipButton.addEventListener("click", function () {
          window.location.href = "/";
        });
      }
      amdTipButton.setAttribute("style", "display:inline-flex; align-items:center; justify-content:center; min-height:40px; padding:0.7em 1.1em; margin:0; line-height:1.2; vertical-align:middle; position:relative; top:0;");

      var button = document.createElement("button");
      button.innerHTML = "ROCm Docs Home";
      if (locale == "zh-CN") {
        button.innerHTML = "ROCm 文档";
      } else if (locale == "ja-JP") {
        button.innerHTML = "ROCm 資料";
      }
      button.classList.add("ft-btn");
      button.classList.add("rocm-button");
  
      var searchInputDoc = document.createElement("input");
      searchInputDoc.setAttribute("type", "text");
      searchInputDoc.setAttribute("style", "width: 340px; min-height:40px; padding:0 12px; font-size:1em; margin:0;");
      let searchInputPlaceHolderText = "AMD Tech Info Portal Keywords";
      if (locale == "zh-CN") {
        searchInputPlaceHolderText = "AMD技术信息门户关键字";
      } else if (locale == "ja-JP") {
        searchInputPlaceHolderText = "AMD 技術情報ポータル キーワード";
      }
      searchInputDoc.setAttribute("placeholder", searchInputPlaceHolderText);
      var searchButtonDoc = document.createElement("button");
      var searchButtonDoc_button_text = "Search";
      if (locale == "zh-CN") {
        searchButtonDoc_button_text = "搜索";
      } else if (locale == "ja-JP") {
        searchButtonDoc_button_text = "検索";
      }
      searchButtonDoc.innerHTML = searchButtonDoc_button_text;
      searchButtonDoc.classList.add("ft-btn");
      searchButtonDoc.setAttribute("style", "font-size:1em; min-height:40px; padding:0 18px; margin:0;");
  
      var searchInputRocm = document.createElement("input");
      searchInputRocm.setAttribute("type", "text");
      searchInputRocm.setAttribute("style", "width: 280px; min-height:36px; padding:0 10px; font-size:0.95em; margin:0;");
      var searchInputRocm_placeholder = "ROCm Keywords";
      if (locale == "zh-CN") {
        searchInputRocm_placeholder = "ROCm 关键词";
      } else if (locale == "ja-JP") {
        searchInputRocm_placeholder = "ROCm キーワード";
      }
      searchInputRocm.setAttribute("placeholder", searchInputRocm_placeholder);
      var searchButtonRocm = document.createElement("button");
      searchButtonRocm.innerHTML = "Search";
      if (locale == "zh-CN") {
        searchButtonRocm.innerHTML = "搜索";
      } else if (locale == "ja-JP") {
        searchButtonRocm.innerHTML = "検索";
      }
      searchButtonRocm.classList.add("ft-btn");
      searchButtonRocm.setAttribute("style", "min-height:36px; padding:0 14px; font-size:0.95em; margin:0;");
  
      var div = document.createElement("div");
      div.setAttribute("style", "display:flex; align-items:center; justify-content:center; gap:12px; flex-wrap:wrap; margin-top:4px;");
      div.appendChild(button);
      div.appendChild(searchInputRocm);
      div.appendChild(searchButtonRocm);
  
      amdTipDiv.appendChild(amdTipButton);
      amdTipDiv.appendChild(searchInputDoc);
      amdTipDiv.appendChild(searchButtonDoc);
      parent_node.appendChild(amdTipDiv);
      if (!isProcessorsLink) {
        var rocmSearchHelp = document.createElement("p");
        rocmSearchHelp.innerHTML = "If you are looking for ROCm related content, use this search field:";
        rocmSearchHelp.setAttribute("style", "margin:32px 0 6px; text-align:center; font-size:0.9em; opacity:0.85;");
        parent_node.appendChild(rocmSearchHelp);
      }
      parent_node.appendChild(div);
  
      button.addEventListener("click", function () {
        window.open(
          "https://rocm.docs.amd.com/en/latest/",
          "_blank", // <- This is what makes it open in a new window.
        );
      });
  
      searchButtonRocm.addEventListener("click", function () {
        var searchRocmURL = "https://rocm.docs.amd.com/en/latest/search.html?q=";
        var searchRocmQuery = searchRocmURL.concat(
          encodeURIComponent(searchInputRocm.value),
        );
        window.open(
          searchRocmQuery,
          "_blank", // <- This is what makes it open in a new window.
        );
      });
  
      searchButtonDoc.addEventListener("click", function () {
        var searchDocURL = "/search/all?content-lang=" + locale + "&query=";
        var searchDocQuery = searchDocURL.concat(
          encodeURIComponent(searchInputDoc.value),
        );
        window.open(
          searchDocQuery,
          "_blank", // <- This is what makes it open in a new window.
        );
      });
    }
    //Listener to get "highlight new map" : #PST-1560 & #FTHD-3450
    if (window.location.href.indexOf("/search/") != -1) {
      let side = document.getElementsByClassName("documenttypefacet-maps");
      const checkbox = document.getElementsByName("documentType")[0];
    }
    initMathJax();
  });
  
  //Executed when topics are loaded in the reader
  document.addEventListener("ft:reader:topicsloaded", function (event) {
    //MathJax is declared when the script is loaded.
    //If the script hasn't loaded yet, it will execute on the whole page once loaded
    if (typeof MathJax !== "undefined") {
      //Apply formatting on all topics with the "math" class
      MathJax.Hub.Queue(["Typeset", MathJax.Hub, "math"]);
      //Apply formatting on all topic titles, as we can't know which one have formulas
      MathJax.Hub.Queue(["Typeset", MathJax.Hub, "title"]);
    }
    if (window.location.href.indexOf("/r/") != -1) {
      highlight_obsolete();
    }

    // TDS-2533: Shadow-pierce MathJax for new FT reader (Stage /r/ pages)
    // MathJax cannot render inside shadow DOM — its internal document.getElementById() calls
    // fail across shadow boundaries, causing [Math Processing Error] for formulas requiring
    // dynamically loaded fonts (e.g. \mathbf uses MathJax_Main-bold).
    // Fix: poll until span.math elements appear in shadow DOM (ft:reader:topicsloaded fires
    // before shadow DOM is populated), then clone each to light DOM, typeset there, inject back.
    if (typeof MathJax !== "undefined" && window.location.href.indexOf("/r/") !== -1) {
      var tds2533MaxTries = 50; // 50 × 100ms = 5s max
      var tds2533Tries = 0;
      var tds2533Timer = setInterval(function() {
        tds2533Tries++;
        var mathEls = [];
        (function findMathInShadow(root, depth) {
          if (depth > 12) return;
          root.querySelectorAll("span.math, div.math").forEach(function(el) {
            if (!el._tds2533patched) mathEls.push(el);
          });
          root.querySelectorAll("*").forEach(function(el) {
            if (el.shadowRoot) findMathInShadow(el.shadowRoot, depth + 1);
          });
        })(document, 0);

        if (mathEls.length === 0) {
          if (tds2533Tries >= tds2533MaxTries) clearInterval(tds2533Timer);
          return;
        }

        // Found math elements — stop polling and process them
        clearInterval(tds2533Timer);

        var wrappers = [];
        mathEls.forEach(function(orig) {
          var rawText = orig.textContent.replace(/\[Math Processing Error\]/g, "").trim();
          if (!rawText) return;
          var wrapper = document.createElement("div");
          wrapper.style.cssText = "position:absolute;left:-99999px;top:0;visibility:hidden";
          var mathSpan = document.createElement(orig.tagName.toLowerCase());
          mathSpan.className = orig.className;
          mathSpan.textContent = rawText;
          wrapper.appendChild(mathSpan);
          document.body.appendChild(wrapper);
          wrappers.push({ wrapper: wrapper, orig: orig });
          MathJax.Hub.Queue(["Typeset", MathJax.Hub, wrapper]);
        });

        MathJax.Hub.Queue(function() {
          wrappers.forEach(function(item) {
            var orig = item.orig;
            var wrapper = item.wrapper;
            if (orig.parentNode && wrapper.firstChild) {
              var frag = document.createDocumentFragment();
              while (wrapper.firstChild) frag.appendChild(wrapper.firstChild);
              orig.parentNode.insertBefore(frag, orig);
              orig.style.display = "none";
              orig._tds2533patched = true;
            }
            if (wrapper.parentNode) wrapper.parentNode.removeChild(wrapper);
          });
        });
      }, 100);
    }
  });

  // TDS-2533: KaTeX rendering for new FT reader (shadow DOM)
  // Content lives 6 levels deep in nested shadow roots — renderMathInElement can't pierce them.
  // Instead: recursively collect span.math / div.math through all shadow roots, render each
  // with katex.renderToString() in-place, then inject KaTeX CSS into each shadow root that
  // contains rendered .katex so layout (fractions, superscripts) works correctly.
  //
  // Uses _tds2533katex flag (NOT _tds2533patched) to avoid conflict with the MathJax
  // shadow-clone block above which also uses _tds2533patched.
  //
  // No setInterval polling — that was causing TOC panel and code-background regressions by
  // running heavy querySelectorAll("*") every 1.5s and interfering with Angular change detection.
  // Instead: run once on ft:reader:topicsloaded, then schedule two one-shot retries at 500ms
  // and 2000ms to catch FT-INFINITE-SCROLL's first content chunk without continuous polling.
  //
  // No ft:pageopening listener — that event fires BEFORE the URL changes, so the /r/ check
  // would always return early when navigating from search/homepage into a doc.
  (function() {
    var TDS2533_KATEX_CDN = "https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.js";
    var TDS2533_KATEX_CSS = "https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.css";

    // Follow the known FT shadow root chain to collect content shadow roots.
    // Primary path: 5 targeted querySelector calls (very fast).
    // Fallback: generic querySelectorAll("*") scan — only runs if FT has renamed components.
    function tds2533GetContentRoots() {
      var roots = [];
      // Step through the known chain: document → div#shadow → ft-reader-content-wrapper →
      // ft-reader-content → ft-infinite-scroll → ft-reader-topic-template-wrapper →
      // ft-reader-topic-content (innermost shadow root containing article content)
      try {
        var step1 = document.querySelector("ft-reader-content-wrapper");
        if (step1 && step1.shadowRoot) {
          var step2 = step1.shadowRoot.querySelector("ft-reader-content");
          if (step2 && step2.shadowRoot) {
            var step3 = step2.shadowRoot.querySelector("ft-infinite-scroll");
            if (step3 && step3.shadowRoot) {
              // ft-infinite-scroll may contain multiple topic wrappers (scroll chunks)
              step3.shadowRoot.querySelectorAll("ft-reader-topic-template-wrapper").forEach(function(w) {
                if (w.shadowRoot) {
                  var inner = w.shadowRoot.querySelector("ft-reader-topic-content");
                  if (inner && inner.shadowRoot) roots.push(inner.shadowRoot);
                }
              });
            }
          }
        }
      } catch (e) { /* targeted path failed — fall through to generic */ }

      // Fallback: generic scan — runs only if targeted path found nothing
      if (roots.length === 0) {
        (function scan(root, depth) {
          if (depth > 12) return;
          root.querySelectorAll("*").forEach(function(el) {
            if (el.shadowRoot) scan(el.shadowRoot, depth + 1);
          });
          // Collect leaf-level shadow roots that contain article content
          if (root !== document && root.querySelector && root.querySelector("span.math, div.math, .ftml, .katex")) {
            roots.push(root);
          }
        })(document, 0);
      }

      return roots;
    }

    // Walk content roots collecting unrendered span.math / div.math elements.
    // Uses _tds2533katex flag so it doesn't conflict with the MathJax block's _tds2533patched.
    function tds2533CollectMath() {
      var mathEls = [];
      tds2533GetContentRoots().forEach(function(root) {
        root.querySelectorAll("span.math, div.math").forEach(function(el) {
          if (!el._tds2533katex) mathEls.push(el);
        });
      });
      return mathEls;
    }

    // Inject KaTeX stylesheet into shadow roots that contain rendered .katex elements.
    function tds2533InjectCSS() {
      tds2533GetContentRoots().forEach(function(root) {
        if (root.querySelector(".katex") && !root.querySelector("link[href*='katex']")) {
          var link = document.createElement("link");
          link.rel = "stylesheet";
          link.href = TDS2533_KATEX_CSS;
          root.appendChild(link);
        }
      });
    }

    // Inject missing FTML code-block styles into shadow roots that contain .ftml content.
    // These rules live in the .github {} block in Topic Styles but not in .ftml {} — shadow
    // DOM means <head> CSS cannot reach them, so we inject a <style> tag per shadow root.
    // Guarded by data-tds2533-ftml attribute to avoid duplicate injection on re-runs.
    var TDS2533_FTML_CSS = [
      "div.highlight { background-color: #eee; padding: 0.5em; margin: 0 1em; }",
      "code.literal { color: #e74c3c; }",
      ".highlight .c1 { color: #007c97; font-style: italic; }"
    ].join(" ");

    function tds2533InjectFtmlStyles() {
      tds2533GetContentRoots().forEach(function(root) {
        if (root.querySelector(".ftml") && !root.querySelector("style[data-tds2533-ftml]")) {
          var style = document.createElement("style");
          style.setAttribute("data-tds2533-ftml", "1");
          style.textContent = TDS2533_FTML_CSS;
          root.appendChild(style);
        }
      });
    }

    // Render all found math elements and inject shadow-root CSS.
    // Returns count of elements rendered this pass.
    function tds2533Run() {
      if (typeof katex === "undefined") return 0;
      var mathEls = tds2533CollectMath();
      if (mathEls.length === 0) return 0;

      mathEls.forEach(function(el) {
        el._tds2533katex = true;
        var raw = el.textContent.trim();
        var isBlock = el.tagName.toLowerCase() === "div";
        var inner = raw
          .replace(/^\\\[/, "").replace(/\\\]$/, "")
          .replace(/^\\\(/, "").replace(/\\\)$/, "")
          .trim();
        if (!inner) return;
        try {
          el.innerHTML = katex.renderToString(inner, {
            displayMode: isBlock,
            throwOnError: false,
            trust: false
          });
          // .katex-mathml must be hidden inline — shadow DOM blocks the <head> CSS rule
          el.querySelectorAll(".katex-mathml").forEach(function(mml) {
            mml.style.cssText = "position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0,0,0,0);white-space:nowrap;border-width:0;";
          });
        } catch (e) { /* leave raw — KaTeX parse error */ }
      });

      tds2533InjectCSS();
      tds2533InjectFtmlStyles();
      console.log("[TDS-2533] KaTeX rendered", mathEls.length, "equations");
      return mathEls.length;
    }

    // Load KaTeX from CDN (once), then invoke callback.
    function tds2533Load(callback) {
      if (typeof katex !== "undefined") { callback(); return; }

      if (!document.querySelector("link[href*='katex']")) {
        var link = document.createElement("link");
        link.rel = "stylesheet";
        link.href = TDS2533_KATEX_CSS;
        document.head.appendChild(link);
      }

      var s = document.createElement("script");
      s.src = TDS2533_KATEX_CDN;
      s.onload = callback;
      s.onerror = function() { console.warn("[TDS-2533] KaTeX CDN load failed"); };
      document.head.appendChild(s);
    }

    // Phase 1: RAF loop — fires at browser paint rate (~16ms) waiting for content to appear in DOM.
    // Stops as soon as content roots are found (targeted path returns ≥1 root).
    // This is now cheap — tds2533GetContentRoots() is 5 querySelector calls, not a full DOM scan.
    // Phase 2: slow interval — 800ms × 20 = 16s to catch FT-INFINITE-SCROLL chunks.
    function tds2533Poll() {
      var rafDone = false;
      var rafCount = 0;
      var maxRaf = 150; // ~2.5s at 60fps safety cap (halved — targeted path is fast)

      function rafLoop() {
        rafCount++;
        tds2533InjectFtmlStyles();
        var roots = tds2533GetContentRoots();
        var rendered = tds2533Run();
        // Stop RAF once we found content roots (content is in DOM) or cap hit
        if (!rafDone && (roots.length > 0 || rafCount >= maxRaf)) {
          rafDone = true;
        }
        if (!rafDone) {
          requestAnimationFrame(rafLoop);
        }
      }
      requestAnimationFrame(rafLoop);

      // Phase 2: slow interval for infinite-scroll chunks (new content as user scrolls)
      var slowAttempts = 0;
      var slowInterval = setInterval(function() {
        slowAttempts++;
        tds2533InjectFtmlStyles();
        tds2533Run();
        if (slowAttempts >= 20) clearInterval(slowInterval);
      }, 800);
      setTimeout(function() { clearInterval(slowInterval); }, 20000);
    }

    // Called on ft:reader:topicsloaded or popstate (SPA nav).
    // Loads KaTeX once, then starts polling for math elements.
    // Also injects FTML code styles immediately — those don't require KaTeX to load.
    function tds2533Init() {
      // FTML code styles run immediately — no CDN dependency
      tds2533InjectFtmlStyles();
      // Retry FTML injection after 1s in case shadow DOM content isn't ready yet
      setTimeout(tds2533InjectFtmlStyles, 1000);

      tds2533Load(function() {
        tds2533Run(); // immediate pass — may find 0 if content not yet in DOM
        tds2533Poll(); // keep trying until content arrives or 20s elapses
      });
    }

    // ft:reader:topicsloaded — fires after SPA nav to /r/ page (may fire before content in DOM)
    document.addEventListener("ft:reader:topicsloaded", tds2533Init);

    // URL watcher — polls every 10ms (just a string compare, negligible CPU).
    // Catches ALL navigation types: pushState, replaceState, back/forward, Angular router internals.
    // Supplements ft:reader:topicsloaded for cases where the event doesn't fire.
    // tds2533Init() is idempotent — already-patched elements are skipped via _tds2533katex flag.
    var _tds2533LastUrl = window.location.href;
    setInterval(function() {
      var url = window.location.href;
      if (url !== _tds2533LastUrl) {
        _tds2533LastUrl = url;
        if (url.indexOf("/r/") !== -1) {
          tds2533Init();
        }
      }
    }, 10);

    // Run immediately for hard refresh directly on an /r/ page
    if (window.location.href.indexOf("/r/") !== -1) {
      tds2533Init();
    }
  })();

  // ============================================================
  // IMAGE ZOOM FIX — TDS-2690 — Stage shadow DOM
  // Prod behavior: clicking ft-zoomable-image shows an in-place
  // zoom overlay (cursor: zoom-in). Stage new reader (v5.2.41+)
  // wraps the same images in <a data-ft-container-id href="/viewer/
  // attachment/..."> — clicking navigates away from the page instead.
  //
  // Fix: intercept click on a[data-ft-container-id] wrapping
  // ft-zoomable-image, prevent navigation, and show a fullscreen
  // overlay matching Prod's zoom UX. Also sets cursor: zoom-in to
  // match Prod's visual affordance.
  //
  // Runs on page load + every /r/ navigation.
  // ============================================================
  (function() {
    function findAllInShadow(root, selector, depth, results) {
      if (depth > 10) return;
      root.querySelectorAll(selector).forEach(function(el) { results.push(el); });
      root.querySelectorAll("*").forEach(function(el) {
        if (el.shadowRoot) findAllInShadow(el.shadowRoot, selector, depth + 1, results);
      });
    }

    function showZoomOverlay(src) {
      var overlay = document.createElement("div");
      overlay.style.cssText = "position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.85);z-index:999999;display:flex;align-items:center;justify-content:center;cursor:zoom-out;";
      var imgEl = document.createElement("img");
      imgEl.src = src;
      imgEl.style.cssText = "max-width:90%;max-height:90vh;object-fit:contain;box-shadow:0 4px 32px rgba(0,0,0,0.6);";
      overlay.appendChild(imgEl);
      document.body.appendChild(overlay);
      function closeOverlay() {
        if (document.body.contains(overlay)) document.body.removeChild(overlay);
      }
      overlay.addEventListener("click", closeOverlay);
      document.addEventListener("keydown", function handler(e) {
        if (e.key === "Escape") { closeOverlay(); document.removeEventListener("keydown", handler); }
      });
    }

    function applyImageZoomFix() {
      if (window.location.href.indexOf("/r/") === -1) return;
      var links = [];
      findAllInShadow(document, "a[data-ft-container-id]", 0, links);
      links.forEach(function(a) {
        var img = a.querySelector("img.ft-zoomable-image");
        if (!img || a._tds2690bound) return;
        a._tds2690bound = true;
        img.style.cursor = "zoom-in";
        a.addEventListener("click", function(e) {
          e.preventDefault();
          showZoomOverlay(img.src);
        });
      });
    }

    if (window.location.href.indexOf("/r/") !== -1) {
      setTimeout(applyImageZoomFix, 500);
    }

    document.addEventListener("ft:reader:topicsloaded", function() {
      setTimeout(applyImageZoomFix, 500);
    });

    var _izLastUrl = window.location.href;
    setInterval(function() {
      var url = window.location.href;
      if (url !== _izLastUrl) {
        _izLastUrl = url;
        if (url.indexOf("/r/") !== -1) setTimeout(applyImageZoomFix, 500);
      }
    }, 10);
  })();

  // ============================================================
  // SEARCH PANEL WIDTH FIX — Stage shadow DOM
  // Bug: ft-reader-search-in-document expands to full viewport
  // width when search panel is opened, hiding article content.
  //
  // Root cause: .ft-search-in-doc--container (light DOM child of
  // ft-search-context, scoped inside ft-reader-search-in-document
  // shadow) has no max-width, so it inherits the full 1392px panel
  // width. Inactive tabs correctly use 320px.
  //
  // Fix: inject max-width: 320px into ft-reader-search-in-document
  // shadow root so the search container stays sidebar-width.
  // Runs on page load + every /r/ navigation.
  // ============================================================
  (function() {
    var SEARCH_MAX_WIDTH = "320px";

    // Recursively scan shadow roots to find an element by selector
    function findInShadow(root, selector, depth) {
      if (depth > 12) return null;
      var el = root.querySelector ? root.querySelector(selector) : null;
      if (el) return el;
      var all = root.querySelectorAll ? root.querySelectorAll("*") : [];
      for (var i = 0; i < all.length; i++) {
        if (all[i].shadowRoot) {
          var found = findInShadow(all[i].shadowRoot, selector, depth + 1);
          if (found) return found;
        }
      }
      return null;
    }

    function injectSearchWidthFix() {
      if (window.location.href.indexOf("/r/") === -1) return;

      var searchComp = findInShadow(document, "ft-reader-search-in-document", 0);
      if (!searchComp || !searchComp.shadowRoot) return;

      var rc = findInShadow(document, "ft-resizable-container", 0);
      if (!rc || !rc.shadowRoot) return;

      var rcSR = rc.shadowRoot;
      var rcRect = rc.getBoundingClientRect();
      var scRect = searchComp.getBoundingClientRect();
      // iconOffset = gap between container left edge and search component left edge (~16px)
      // rightOffset = gap between search component right edge and container right edge (~31px)
      var iconOffset = Math.round(scRect.left - rcRect.left);
      var rightOffset = Math.round(rcRect.right - scRect.right);
      var newContentWidth = iconOffset + parseInt(SEARCH_MAX_WIDTH) + rightOffset; // e.g. 16 + 320 + 31 = 367
      var newRcWidth = newContentWidth + 6; // +6px for the drag handle itself

      function doSnap() {
        var rd = rcSR.querySelector("#resized-content");
        var rh = rcSR.querySelector(".right");
        if (rd) rd.style.width = "";   // clear — let FT CSS fill rc naturally
        if (rh) rh.style.left = "";    // clear — let FT CSS position handle naturally
        rc.style.width = newRcWidth + "px";
        console.log("[SEARCH-WIDTH-FIX] Snapped — search panel ~" + SEARCH_MAX_WIDTH);
      }

      // TDS-2692 fix v2: enforce min-width to match PROD behaviour.
      // PROD (docs.amd.com) uses CSS min-width:346px on aside.component-aside —
      // confirmed via Playwright drag test: FT sets inline width to 53px when
      // dragged hard left, but browser clamps to 346px (96px icon strip + 250px content).
      // Stage has no equivalent CSS floor (computedMinWidth:"auto"), so FT was
      // letting the container collapse to 0px and saving that in its state.
      // Setting minWidth here replicates PROD's CSS constraint without locking
      // the panel — user can still drag freely above 346px.
      // The search panel expansion (original reason for the observer) is handled
      // separately by the CSS injection into ft-reader-search-in-document shadow root.
      if (!rc._minWidthSet) {
        rc.style.minWidth = "346px";
        rc._minWidthSet = true;
        console.log("[TOC-WIDTH-FIX] min-width 346px applied — matches PROD floor");
      }
    }

    // TDS-2692 v3: Clicking the already-active ToC tab should collapse the panel.
    // FT v5.2 bug: clicking the active ft-slotted-tab-trigger does nothing (no collapse).
    // Fix: intercept the click, defer via setTimeout(0) so FT's own handler fires first
    // (it re-dispatches selectedTabId:"tab-XXXXX" unchanged), then we dispatch
    // selectedTabId:null which triggers updateFromStores() on ft-slotted-collapsible
    // and collapses the panel.
    function attachTocCollapseToggle() {
      if (window.location.href.indexOf("/r/") === -1) return;

      function findAllTriggers(root, acc, depth) {
        if (depth > 12) return;
        var found = root.querySelectorAll ? root.querySelectorAll("ft-slotted-tab-trigger") : [];
        for (var i = 0; i < found.length; i++) {
          if (!found[i]._tocToggleAttached) acc.push(found[i]);
        }
        var all = root.querySelectorAll ? root.querySelectorAll("*") : [];
        for (var i = 0; i < all.length; i++) {
          if (all[i].shadowRoot) findAllTriggers(all[i].shadowRoot, acc, depth + 1);
        }
      }

      var triggers = [];
      findAllTriggers(document, triggers, 0);

      // Find ft-resizable-container across shadow DOM for width manipulation
      function findResizableContainer() {
        var rc = null;
        function walk(root, depth) {
          if (depth > 12 || rc) return;
          var all = root.querySelectorAll ? root.querySelectorAll("*") : [];
          for (var i = 0; i < all.length; i++) {
            if (all[i].tagName && all[i].tagName.toLowerCase() === "ft-resizable-container") {
              rc = all[i]; return;
            }
            if (all[i].shadowRoot) walk(all[i].shadowRoot, depth + 1);
          }
        }
        walk(document, 0);
        return rc;
      }

      triggers.forEach(function(trigger) {
        trigger._tocToggleAttached = true;
        // capture:true — our handler fires before FT's bubble-phase handler,
        // so we read aria-selected BEFORE FT changes it on click.
        trigger.addEventListener("click", function() {
          var rc = findResizableContainer();

          if (rc && rc._tocCollapsed) {
            // Panel fully collapsed — any tab click restores width.
            setTimeout(function() {
              rc.style.setProperty("min-width", "346px", "important");
              rc.style.setProperty("width", rc._tocSavedWidth || "468px", "important");
              rc._tocCollapsed = false;
              console.log("[TOC-TOGGLE-FIX] Restored: width=" + (rc._tocSavedWidth || "468px"));
            }, 0);
          } else {
            // Read BEFORE FT's handler changes it (capture fires first).
            var isActive = trigger.getAttribute("aria-selected") === "true";
            if (!isActive) return; // inactive tab — let FT open it normally
            var contextId = trigger.getAttribute("tabscontextid");
            if (!contextId) return;
            var storeKey = "ft-slotted-tabs-" + contextId;
            var ftStore = window.ftReduxStores && window.ftReduxStores[storeKey];
            if (!ftStore || !ftStore.reduxStore) return;
            setTimeout(function() {
              ftStore.reduxStore.dispatch({
                type: "DEFAULT_VALUE_SETTER__selectedTabId",
                overwrites: { selectedTabId: null }
              });
              if (rc) {
                // Use computed width (not inline style) — inline may already be 0px from FT's state
                if (!rc._tocSavedWidth || rc._tocSavedWidth === "0px") {
                  rc._tocSavedWidth = window.getComputedStyle(rc).width || "468px";
                }
                rc.style.setProperty("min-width", "0px", "important");
                rc.style.setProperty("width", "0px", "important");
                rc._tocCollapsed = true;
                console.log("[TOC-TOGGLE-FIX] Collapsed: Redux + width=0px (" + storeKey + ")");
              }
            }, 0);
          }
        }, true); // capture:true
      });
    }

    // Run on /r/ pages immediately (delay slightly for shadow DOM to mount)
    if (window.location.href.indexOf("/r/") !== -1) {
      setTimeout(injectSearchWidthFix, 300);
      setTimeout(attachTocCollapseToggle, 300);
    }

    // Re-run on SPA navigation
    document.addEventListener("ft:reader:topicsloaded", function() {
      setTimeout(injectSearchWidthFix, 300);
      setTimeout(attachTocCollapseToggle, 300);
    });

    var _swfLastUrl = window.location.href;
    setInterval(function() {
      var url = window.location.href;
      if (url !== _swfLastUrl) {
        _swfLastUrl = url;
        if (url.indexOf("/r/") !== -1) {
          setTimeout(injectSearchWidthFix, 300);
          setTimeout(attachTocCollapseToggle, 300);
        }
      }
    }, 10);
  })();

  //Excecuted when search results are loaded
  document.addEventListener("ft:search:resultsloaded", function (event) {
    //Add a listener to be able apply formatting on preview
    const searchResults = document.getElementsByClassName(
      "searchresult-previewable",
    );
    for (const result of searchResults) {
      result.addEventListener("click", function () {
        //Wait for the drawer to open
        waitForElm(".drawerlasagna-layer-garnish").then(() => {
          //Apply formatting on the drawer's title
          MathJax.Hub.Queue([
            "Typeset",
            MathJax.Hub,
            "drawerlasagna-layer-title",
          ]);
          //Wait for the topic to load
          waitForElm(".topic").then(() => {
            //Apply formatting on the topic if is has "math" class
            MathJax.Hub.Queue(["Typeset", MathJax.Hub, "math"]);
          });
        });
      });
    }
    //MathJax is declared when the script is loaded.
    //If the script hasn't loaded yet, it will execute on the whole page once loaded
    if (typeof MathJax !== "undefined") {
      //Apply formatting on search result titles and excerpts
      MathJax.Hub.Queue(["Typeset", MathJax.Hub, "searchresult-title"]);
      MathJax.Hub.Queue(["Typeset", MathJax.Hub, "searchresult-excerpt"]);
    }
    //Listener to get "highlight new map" : #PST-1560 & #FTHD-3450
    if (window.location.href.indexOf("/search/") != -1) {
      getMapsEditionDate();
    }
  
    const searchresults = document.querySelectorAll(".searchresult-main-infos");
    // Add an event listener to each element
    searchresults.forEach((searchresult) => {
      const format_indicator = searchresult.getElementsByClassName(
        "searchresult-format-indicator",
      )[0];
      const meta_selector = searchresult.getElementsByClassName(
        "searchresult-metadata-selector",
      )[0];
      if (!meta_selector) return;
      const selector = meta_selector.getElementsByTagName("select")[0];
  
      selector.addEventListener("change", function () {
        let pdf_index = Array.from(format_indicator.classList).indexOf(
          "format-pdf",
        );
        let zip_index = Array.from(format_indicator.classList).indexOf(
          "format-zip",
        );
        let gzip_index = Array.from(format_indicator.classList).indexOf(
          "format-gzip",
        );
  
        if (pdf_index < zip_index) {
          format_indicator.classList.remove("format-pdf");
        } else {
          format_indicator.classList.remove("format-zip");
        }
        if (pdf_index < gzip_index) {
          format_indicator.classList.remove("format-pdf");
        } else {
          format_indicator.classList.remove("format-gzip");
        }
      });
    });
  
    /*************************************************/
    /******** Change "Select documents" to "Select Versions" ********/
    /*************************************************/
    function renameSelectDocumentsButton() {
      try {
        // Find all buttons with the inner text span
        const buttonSpans = document.querySelectorAll('.ft-btn-inner-text');
        
        buttonSpans.forEach((span) => {
          if (span.textContent && span.textContent.trim() === 'Select documents') {
            span.textContent = 'Select Versions';
          }
        });
      } catch (error) {
        // Fail silently
      }
    }
    
    renameSelectDocumentsButton();
    setTimeout(renameSelectDocumentsButton, 500);
    setTimeout(renameSelectDocumentsButton, 1000);
    /*************************************************/
  });
  
  //#PST-1560
  //#FTHD-3450
  //Highlight New Map :
  
  let todayDate = new Date();
  
  function getMapsEditionDate() {
    let mapList = document.getElementsByClassName("searchresult-details");
  
    for (let i = 0; i < mapList.length; ++i) {
      let title = mapList[i].previousSibling;
      let title_link = title.getElementsByTagName("a")[0];
      let c = mapList[i].querySelectorAll("ul");
      let metaDataList = mapList[i].querySelectorAll("li");
      for (j = 0; j < metaDataList.length; ++j) {
        if (metaDataList[j].getAttribute("data-meta-id") == "Document_ID") {
          let doc_id =
            metaDataList[j].getElementsByClassName("metadata-values")[0]
              .textContent;
          if (doc_id == "UG905" || doc_id == "UG911" || doc_id == "UG1451") {
            let main_info = mapList[i].parentElement.parentElement;
            main_info.classList.add("obsolete_doc");
          } else if (doc_id == "PG336") {
            let main_info = mapList[i].parentElement.parentElement;
            main_info.classList.add("discontinued_ip");
          } else if (doc_id == "PG387") {
            let main_info = mapList[i].parentElement.parentElement;
            main_info.classList.add("nrnd_doc");
          }
        }
        if (metaDataList[j].getAttribute("data-meta-id") == "ft:lastEdition") {
          let lastEditionDateValue = metaDataList[j].firstElementChild.innerHTML;
          let lastEditionDate = new Date(lastEditionDateValue);
          let tmp = lastEditionDate - todayDate;
          let diff = dateDiff(lastEditionDate, todayDate);
          if (diff.day < 14) {
            let main_info = mapList[i].parentElement.parentElement;
  
            let metadata_selector = mapList[i].getElementsByClassName(
              "searchresult-metadata-selector",
            );
            if (metadata_selector.length === 1) {
              main_info.classList.add("updated_doc");
              //metadata_selector[0].innerHTML = "<span class='iconNew'></span>" + metadata_selector[0].innerHTML;
            } else {
              main_info.classList.add("new_doc");
              //mapList[i].innerHTML = "<span class='iconNew'></span>" + mapList[i].innerHTML;
            }
  
            // mapList[i].innerHTML = "<span class='iconNew'></span>" + mapList[i].innerHTML;
          }
        }
      }
    }
  }
  
  function dateDiff(lastEditionDate, todayDate) {
    var diff = {};
    var tmp = todayDate - lastEditionDate;
    tmp = Math.floor(tmp / 1000);
    diff.sec = tmp % 60;
    tmp = Math.floor((tmp - diff.sec) / 60);
    diff.min = tmp % 60;
    tmp = Math.floor((tmp - diff.min) / 60);
    diff.hour = tmp % 24;
    tmp = Math.floor((tmp - diff.hour) / 24);
    diff.day = tmp;
    return diff;
  }
  
  //highlight obsolete
  function highlight_obsolete() {
    let toc_scrollable_bar = document.getElementsByClassName(
      "reader-aside-toc-scrollable",
    );
    if (toc_scrollable_bar == null) return;
    let toc = toc_scrollable_bar[0];
    if (toc == null) return;
    let labels = toc.querySelectorAll(".gwt-InlineLabel");
    for (let i = 0; i < labels.length; ++i) {
      if (labels[i].textContent.includes("Obsolete Document Notice")) {
        labels[i].style.color = "red";
      }
    }
  }
  
  // Make table sortable
  const getCellValue = (tr, idx) =>
    tr.children[idx].innerText || tr.children[idx].textContent;
  
  const comparer = (idx, asc) => (a, b) => {
    const v1 = getCellValue(asc ? a : b, idx);
    const v2 = getCellValue(asc ? b : a, idx);
    return v1 !== "" && v2 !== "" && !isNaN(v1) && !isNaN(v2)
      ? v1 - v2
      : v1.toString().localeCompare(v2);
  };
  
  // do the work...
  document.addEventListener("ft:reader:topicsloaded", function (event) {
    let ths = document.querySelectorAll("th");
  
    for (let i = 0; i < ths.length; ++i) {
      const table = ths[i].closest("table");
      const tbody = table.querySelectorAll("tbody")[0];
      const tr_s = tbody.querySelectorAll("tr");
      let init_len = tr_s[0].querySelectorAll("td").length;
      if (init_len === 0 && tr_s.length >= 1) {
        init_len = tr_s[1].querySelectorAll("td").length;
      }
      let show_icon = true;
      if (tr_s.length <= 1) {
        show_icon = false;
      } else {
        for (let j = 0; j < tr_s.length; ++j) {
          let tds = tr_s[j].querySelectorAll("td");
          if (tds.length == 0) {
            continue;
          }
          if (init_len != tds.length) {
            show_icon = false;
            break;
          }
        }
      }
      if (show_icon == true) {
        if (!ths[i].innerHTML.includes("iconSort")) {
          ths[i].innerHTML = ths[i].innerHTML + "<span class='iconSort'></span>";
        }
        ths[i].addEventListener("click", () => {
          const table = ths[i].closest("table");
          const tbody = table.querySelectorAll("tbody")[0];
          let start_tr = "tr:nth-child(n+1)";
          if (tr_s[0].querySelectorAll("td").length === 0) {
            start_tr = "tr:nth-child(n+2)";
          }
          Array.from(tbody.querySelectorAll(start_tr))
            .sort(
              comparer(
                Array.from(ths[i].parentNode.children).indexOf(ths[i]),
                (this.asc = !this.asc),
              ),
            )
            .forEach((tr) => tbody.appendChild(tr));
        });
      }
    }
  });
  
  /**************************************************************************/
  /***************** PREFILL RATING/FEEDBACK EDITOR *************************/
  /**************************************************************************/
  // Add text in the email body
  function addRichText(iframe) {
    let survey = document.createElement("p");
    survey.classList.add("survey");
    survey.innerHTML =
      "<p>Thank you for using this form to provide feedback on our documentation. If you are looking for support, please navigate to the Support Community at&nbsp;<a href='https://support.xilinx.com' target='_blank' style='color: rgb(0, 0, 255);'>https://support.xilinx.com.</a></p>" +
      "<p><strong>Please rate the content</strong>&nbsp;on the following criteria (1 = Poor / 5 = Excellent):<br />" +
      "Clarity (1-5):<br />Accuracy (1-5):<br />Completeness (1-5):<br />Organization (1-5):</p>" +
      "<p><strong>Was this content helpful</strong>&nbsp;(Yes | No):</p>" +
      "<p><strong>Please enter your comments</strong> below:</p>";
    iframe.contentWindow.document.body.insertBefore(
      survey,
      iframe.contentWindow.document.body.firstChild,
    );
  }
  function addSimpleText(editor) {
    editor.value = "INSERT TEXT HERE\nTHANKS\n";
  }
  
  // Look for the feedback drawer and rich editor to be fully loaded
  function waitForFeedbackEditor() {
    if (
      document
        .querySelector(".feedback-feedback-area")
        .querySelector(".tox-edit-area__iframe") === null
    ) {
      // wait for iframe creation
      setTimeout(function () {
        waitForFeedbackEditor();
      }, 500);
    } else {
      let iframe = document
        .querySelector(".feedback-feedback-area")
        .querySelector(".tox-edit-area__iframe");
      if (iframe.contentWindow.document.body.querySelector(".survey") === null) {
        // do not add survey a second time
        if (
          iframe.contentWindow.document.body.querySelector(
            "br[data-mce-bogus]",
          ) === null
        ) {
          // wait for fully loaded editor's content
          setTimeout(function () {
            waitForFeedbackEditor();
          }, 50);
        } else {
          addRichText(iframe);
        }
      }
    }
  }
  
  // Look for the feedback drawer and rich editor to be fully loaded
  function waitForRatingEditor() {
    if (
      document
        .querySelector(".floating-container-open")
        ?.querySelector(".rating-message-container") === null
    ) {
      // wait for iframe creation
      setTimeout(function () {
        waitForRatingEditor();
      }, 500);
    } else {
      let editor = document
        .querySelector(".floating-container-open")
        ?.querySelector(".rating-message-container")
        .querySelector("textarea");
      if (editor.value === "") {
        // do not add survey a second time
        addSimpleText(editor);
      }
    }
  }
  
  // Add the trigger on the feedback button
  function addEventFeedback() {
    let feedbacks = document.querySelectorAll(
      'button[data-context-menu="FEEDBACK"]',
    );
    for (let fi = 0; fi < feedbacks.length; ++fi) {
      feedbacks[fi].addEventListener("click", waitForFeedbackEditor);
    }
  }
  
  // Feedback button are also in the more action menu
  // it is dynamically generated so we need to add an event to catch user clicking on this menu button
  document.addEventListener("ft:analytics:userevents", function (event) {
    let events = event.detail;
    for (event of events) {
      switch (event.name) {
        case "topic.start_display":
          // Feedback quick action button
          let feedbacks = document.querySelectorAll(
            'button[data-context-menu="FEEDBACK"]',
          );
          for (let fi = 0; fi < feedbacks.length; ++fi) {
            feedbacks[fi].addEventListener("click", waitForFeedbackEditor);
          }
          // Rating button
          let ratings = document.querySelectorAll(
            'button[data-context-menu="RATING"]',
          );
          for (let fi = 0; fi < ratings.length; ++fi) {
            ratings[fi].addEventListener("click", waitForRatingEditor);
          }
          // More action menu button
          let buttons = document.querySelectorAll(
            "button.readercontent-quick-topic-action",
          );
          for (let bi = 0; bi < buttons.length; ++bi) {
            buttons[bi].addEventListener("click", addEventFeedback);
          }
          addEventFeedback();
          break;
      }
    }
  });
  
  /**************************** END OF PREFILL ******************************/
  document.addEventListener("DOMContentLoaded", function (event) {
    // Your code to run since DOM is loaded and ready
  });
  /*user announcement
    document.getElementById("FT-tenant-custom-header").innerHTML += "<div id='alert_banner'><div class='ext_ui_announcement ext_ui__warning'> <div class='ext_ui_announcement_content'><button type='button' data-dismiss='alert' aria-label='close' class='close-alert' id='close-alert'><span aria-hidden='true'>×</span></button>" +
    "<div class='ext_ui_announcement_text'><span class='icon-alert'></span> <span class='ext_ui_announcement_description'>As of  March 15, 2024, the domain URL for the AMD Adaptive Computing Documentation portal has changed from <span class='white-url'>https://docs.xilinx.com</span> to <span class='white-url'>https://docs.amd.com</span>.</span></div> <!----></div> <a aria-label='Close Announcement' class='ext_ui_announcement_close_button' style='display: none;'><i class='rw_external_icon_times'></i></a></div></div>";
    document.getElementById("close-alert").addEventListener('click', function(event) {
        document.getElementById("alert_banner").style.display="none";
        document.getElementById("FT-application-content").style.top="0.00001px";
      document.getElementsByClassName("banner")[0].style.top="10px";
    });*/
  
  // Start secure functions
  let metaSecure = "secureFeature";
  let valueCopy = "copy";
  let valuePrint = "print";
  let valuePreview = "preview";
  
  /*************************************************/
  /******** PST-3192 Deactivate the preview ********/
  /*************************************************/
  document.addEventListener("ft:search:resultsloaded", addLinkToExcerpt);
  
  function addLinkToExcerpt() {
    let results = document.querySelectorAll(
      ".searchresult:not(.searchresult--custom)",
    );
    results.forEach((result) => {
      const metadataIsSecure = result.querySelector(
        ".metadata-is-" + metaSecure.toLowerCase(),
      );
      if (
        !metadataIsSecure ||
        !metadataIsSecure.textContent.includes(valuePreview)
      ) {
        return;
      }
  
      const titleLink = result.querySelector(".searchresult-title > a");
      const excerptEl = result.querySelector(".searchresult-excerpt");
      const button = result.querySelector(".searchresult-preview-button");
      if (!titleLink || !excerptEl) {
        return;
      }
  
      const titleUrl = titleLink.getAttribute("href");
      const excerptLink = document.createElement("a");
  
      excerptLink.classList.add("searchresult-excerpt-link");
      excerptLink.setAttribute("href", titleUrl);
      excerptEl.parentElement.insertBefore(excerptLink, excerptEl);
      excerptLink.appendChild(excerptEl);
      excerptLink.style.display = "none";
      result.classList.add("searchresult--custom");
    });
  }
  /******** END of PST-3192 ************************/
  
  /*************************************************/
  /******** PST-3191 Deactivate the copy ***********/
  /******** PST-3445 Restrict "print" button *******/
  /*************************************************/
  // document.addEventListener("ft:reader:topicsloaded", isSecureFeature);
	document.addEventListener("ft:pageopening", isSecureFeature(event));
  function isSecureFeature(event) {
    const config = { attributes: false, childList: true, subtree: true };
    const callback = () => {
      let targetNode = document.querySelector(".coverbar-metadata");
      if (!targetNode) {
        return;
      }
      const metadataIsSecure = targetNode.querySelector(
        ".metadata-is-securefeature",
      );
      const isDocSecure = targetNode.querySelector(".metadata-is-issecure");
      if (!metadataIsSecure) {
        return;
      }
  
      let noCopy = metadataIsSecure.textContent.includes(valueCopy);
      let noPrint = metadataIsSecure.textContent.includes(valuePrint);
      let nozoom = isDocSecure.textContent.includes("true");
      restrictDocumentCopyFeatures(noCopy);
      restrictDocumentPrintFeatures(noPrint);
  
      restrictTopicsSecureFeatures(noPrint);
      //restrictTopicsImageZoomin(nozoom);
      observer.disconnect();
    };
  
    const observer = new MutationObserver(callback);
    observer.observe(document, config);
  }
  
  function restrictDocumentCopyFeatures(isSecure) {
    // Copy
    const papyrusSheet = document.querySelector(".readercontent-papyrus-sheet");
    if (!papyrusSheet) {
      return;
    }
    isSecure
      ? papyrusSheet.classList.add("no-copy")
      : papyrusSheet.classList.remove("no-copy");
  }
  
  function restrictDocumentPrintFeatures(isSecure) {
    // Print
    const printFeatures = document.querySelectorAll(
      '.coverbar .ft-btn[data-context-menu="PRINT_DOCUMENT"]',
    );
    if (!printFeatures) {
      return;
    }
    printFeatures.forEach((printFeature) => {
      isSecure
        ? printFeature.classList.add("d-none")
        : printFeature.classList.remove("d-none");
    });
  }
  function restrictTopicsImageZoomin(nozoom) {
    const images = document.querySelectorAll("img");
    images.forEach((image) => {
      image.classList.add("secured-image");
      //image.setAttribute('style', 'pointer-events: none !important;  user-selectr: none !important;');
    });
    const svg_images = document.querySelectorAll(".ft-svg-container");
    svg_images.forEach((image) => {
      image.classList.add("secured-image");
  
      // image.setAttribute('style', 'pointer-events: none !important;  user-selectr: none !important;');
    });
  }
  /******** END of PST-3191 ************************/
  /******** END of PST-3445 ************************/
  
  /*************************************************/
  /******** PST-3445 Restrict "print" button *******/
  /*************************************************/
  const topicSecureFeatures = ["PRINT_TOPIC"];
  
  function restrictTopicsSecureFeatures(isSecure) {
    let topics = document.querySelectorAll(
      ".readercontent-topics-group:not(.readercontent-topics-group--custom)",
    );
    topics.forEach((topic) => {
      const quickActions = topic.querySelectorAll(
        ".readercontent-quick-topic-action:not(.readercontent-context-menu-toggle)",
      );
      for (let quickAction of quickActions) {
        const featureCode = quickAction.getAttribute("data-context-menu");
        if (topicSecureFeatures.includes(featureCode)) {
          isSecure
            ? quickAction.classList.add("d-none")
            : quickAction.classList.remove("d-none");
        }
      }
  
      const quickActionsMore = topic.querySelector(
        ".readercontent-quick-topic-action.readercontent-context-menu-toggle",
      );
      if (!quickActionsMore) {
        return;
      }
      quickActionsMore.addEventListener("click", () => {
        for (let featureCode of topicSecureFeatures) {
          const feature = document.querySelector(
            `.floating-container-content-wrapper .ft-btn[data-context-menu="${featureCode}"]`,
          );
          if (!feature) {
            return;
          }
  
          isSecure
            ? feature.classList.add("d-none")
            : feature.classList.remove("d-none");
        }
      });
  
      topic.classList.add("readercontent-topics-group--custom");
    });
  }
  
  /******** END of PST-3444 ************************/
  /******** END of PST-3445 ************************/
  
  // Highlight code and copy to clipboard — TDS-2703: shadow DOM fix
  // Collect all matching elements across all shadow roots
  function findAllInShadow(root, selector, results, depth) {
    if (depth > 12) return;
    var matches = root.querySelectorAll ? root.querySelectorAll(selector) : [];
    for (var i = 0; i < matches.length; i++) results.push(matches[i]);
    var all = root.querySelectorAll ? root.querySelectorAll("*") : [];
    for (var j = 0; j < all.length; j++) {
      if (all[j].shadowRoot) findAllInShadow(all[j].shadowRoot, selector, results, depth + 1);
    }
  }

  // Cache for fetched HLJS CSS text
  var _hljsCssText = null;

  // Inject HLJS CSS as inline <style> into a shadow root (once per root)
  function injectHljsCssIntoShadowRoot(shadowRoot, cssText) {
    if (shadowRoot.host && shadowRoot.host.getAttribute("data-hljs-css-injected") === "true") return;
    var style = document.createElement("style");
    style.textContent = cssText;
    shadowRoot.appendChild(style);
    if (shadowRoot.host) shadowRoot.host.setAttribute("data-hljs-css-injected", "true");
  }

  // Lazy-load highlight.js — only fetched when the polling burst actually finds pre/code blocks.
  // Cannot gate at module-execution time: FT renders content into nested shadow DOM asynchronously,
  // so any querySelector at this point always returns null even on code pages.
  var _hljsScriptLoaded = false;
  function loadHljsScript() {
    if (_hljsScriptLoaded) return;
    _hljsScriptLoaded = true;
    var hljsScript = document.createElement("script");
    hljsScript.src =
      "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.6.0/highlight.min.js";
    hljsScript.async = true;
    document.head.appendChild(hljsScript);
    // Keep <link> in document.head for PROD (light DOM) — shadow DOM gets inline <style> below
    var hljsStyle = document.createElement("link");
    hljsStyle.href =
      "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.6.0/styles/default.min.css";
    hljsStyle.rel = "stylesheet";
    document.head.appendChild(hljsStyle);
  }

  // TDS-2703: start a highlight retry burst (20 attempts × 1s).
  // Called on fresh load and on every SPA navigation (URL change).
  // ft:reader:topicsloaded fires before content lands in shadow DOM,
  // and before our listener is registered on fresh page load — so we
  // use the same URL-watcher pattern as TDS-2533 instead.
  var _hljsBurstTimer = null;
  function startHljsBurst() {
    if (_hljsBurstTimer) clearInterval(_hljsBurstTimer);
    var _hljsRetries = 0;
    _hljsBurstTimer = setInterval(function() {
      // Probe shadow DOM for code blocks before loading the 36KB script
      var probeBlocks = [];
      findAllInShadow(document, "pre.programlisting, pre code", probeBlocks, 0);
      if (probeBlocks.length > 0) {
        loadHljsScript();
        if (typeof hljs !== "undefined") highlightCode();
      }
      _hljsRetries++;
      if (_hljsRetries >= 20) { clearInterval(_hljsBurstTimer); _hljsBurstTimer = null; }
    }, 1000);
  }

  // Run immediately on script init (covers fresh page load)
  startHljsBurst();

  // Re-run on SPA navigation (URL change)
  var _hljsLastUrl = window.location.href;
  setInterval(function() {
    var url = window.location.href;
    if (url !== _hljsLastUrl) {
      _hljsLastUrl = url;
      startHljsBurst();
    }
  }, 500);

  document.addEventListener("ft:reader:topicsloaded", function (event) {
    //    customCoverbar();
    startHljsBurst();
  });

  function highlightCode() {
    if (typeof hljs === "undefined") return;

    // TDS-2703: walk all shadow roots to find code blocks (stage uses 6-level shadow DOM)
    var hljsBlocks = [];
    findAllInShadow(document, "pre.programlisting, pre code", hljsBlocks, 0);

    // Collect shadow roots that contain code blocks (for CSS injection)
    var shadowRootsToStyle = [];

    hljsBlocks.forEach(function(block) {
      if (block.getAttribute("hightlightAdded") == "true") return;
      // Code colorization
      hljs.highlightBlock(block);
      block.setAttribute("hightlightAdded", "true");

      // Track the shadow root containing this block for CSS injection
      var sr = block.getRootNode ? block.getRootNode() : null;
      if (sr && sr.host && shadowRootsToStyle.indexOf(sr) === -1) {
        shadowRootsToStyle.push(sr);
      }
    });

    // Inject HLJS CSS into shadow roots that contain code blocks
    if (shadowRootsToStyle.length > 0) {
      var hljsCssUrl = "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.6.0/styles/default.min.css";
      if (_hljsCssText) {
        shadowRootsToStyle.forEach(function(sr) { injectHljsCssIntoShadowRoot(sr, _hljsCssText); });
      } else {
        fetch(hljsCssUrl).then(function(r) { return r.text(); }).then(function(css) {
          _hljsCssText = css;
          shadowRootsToStyle.forEach(function(sr) { injectHljsCssIntoShadowRoot(sr, _hljsCssText); });
        });
      }
    }

    // Get every element identified as a codeblock and launch actions for each
    var codeBlocks = [];
    findAllInShadow(document, "pre.programlisting, pre code", codeBlocks, 0);
    codeBlocks.forEach(function(block) {
      if (block.getAttribute("copyButtonAdded") == "true") {
        return;
      }
      // Create a button to copy
      // First create a container for the button (layout purpose)
      var copyButtonContainer = document.createElement("div");
      // Add some attributes to this container
      copyButtonContainer.className =
        "readercontent-topic-codeblock-copybuttoncontainer";
      // Then create a button
      var copyButton = document.createElement("button");
      // create a unique ID for this button
      var ID = "_" + Math.random().toString(36).substring(2, 9);
      // Math.random should be unique because of its seeding algorithm.
      // Convert it to base 36 (numbers + letters), and grab the first 9 characters
      // after the decimal.
      copyButton.id = ID;
      copyButton.className = "readercontent-topic-codeblock-copybutton";
      // Label of the button
      copyButton.innerHTML = '<span class="copybutton-text">Copy</span>';
      // Launch copy function when clicked
      copyButton.addEventListener(
        "click",
        function () {
          navigator.clipboard.writeText(block.textContent);
          FluidTopicsNotificationService.info("Code copied to clipboard.");
        },
        false,
      );
      // Create a container that will contain codeblock and button (layout purpose)
      var wrapper = document.createElement("div");
      wrapper.className = "readercontent-topic-codeblockcontainer";
      // Insert the wrapper before the codeblock and move the codeblock inside it
      block.parentNode.insertBefore(wrapper, block);
      wrapper.appendChild(block);
      // Insert button container into wrapper
      block.after(copyButtonContainer);
      // Insert button into container
      copyButtonContainer.appendChild(copyButton);
      block.setAttribute("copyButtonAdded", "true");
    });
  }
  
  /***************************************************/
  /******** Custom coverbar **/
  /***************************************************/
  async function customCoverbar() {
    const targetContainer = document.querySelector(".coverbar-metadata");
    if (targetContainer == null) return;
    // Options for the observer (which mutations to observe)
    const config = { attributes: false, childList: true, subtree: true };
    // Callback function to execute when mutations are observed
    const callback = async () => {
      let isSecureDisplayed = targetContainer.querySelector(
        ".metadata-is-issecure",
      );
      let isSecurevalue = isSecureDisplayed.getAttribute("title");
      if (isSecurevalue.includes("true")) {
        // const isSecure = isSecureDisplayed.querySelector('.metadata-values');
        // if ( isSecure.textContent.includes('true')) {
        isSecureDisplayed.classList.add("icon-lock");
      }
      // Later, you can stop observing
      observer.disconnect();
    };
  
    // Create an observer instance linked to the callback function
    const observer = new MutationObserver(callback);
  
    // Start observing the target node for configured mutations
    observer.observe(targetContainer, config);
  }
  /***************************************************/
  /******** PST-3393 Add cookies settings in footer **/
  /***************************************************/
  
  async function customCookieSettingLabelInFooter() {
    // Add footer for all pages
    let targetNode = document.querySelector(".footer");
  
    if (!targetNode) {
      return;
    }
    let cookieItemExists = document.querySelector(".footer-cookie-item");
    if (cookieItemExists) {
      return;
    }
    const footerItemList = targetNode.querySelector(".footer-links");
    const customItemLi = document.createElement("li");
    customItemLi.classList.add("footer-cookie-item");
    const customItemLink = document.createElement("a");
    customItemLink.classList.add("gwt-Anchor");
    customItemLink.href = "javascript:Optanon.ToggleInfoDisplay()";
    // Fetch in custom language file Cookie setting label
    await FluidTopicsCustomI18nService.fetchContext("Footer");
    const customLabel = FluidTopicsCustomI18nService;
    const cookieSettingLabel =
      customLabel.cache.content.Footer.messages.CookieSetting;
    //const cookieSettingLabel = "Cookie Settings/Do Not Sell or Share My Personal Information";
  
    customItemLink.textContent = cookieSettingLabel;
    customItemLi.append(customItemLink);
    footerItemList.append(customItemLi);
  
    /* const targetContainer = document.querySelector('.component-main');
      const config = { attributes: false, childList: true, subtree: true };
    
      const callback = async () => {
        let targetNode = document.querySelector('.footer');  
            console.log(targetNode)
    
        if (!targetNode) {
          return;
        }f
        let cookieItemExists = document.querySelector('.footer-cookie-item')
        if (cookieItemExists) {
          return;
        }
        const footerItemList = targetNode.querySelector('.footer-links');
        const customItemLi = document.createElement('li');
        customItemLi.classList.add('footer-cookie-item');
        const customItemLink = document.createElement('a');
        customItemLink.classList.add('gwt-Anchor');
        customItemLink.href = 'javascript:Optanon.ToggleInfoDisplay()';
        // Fetch in custom language file Cookie setting label
        await FluidTopicsCustomI18nService.fetchContext('Footer');
        const customLabel = FluidTopicsCustomI18nService;
        //const cookieSettingLabel = customLabel.cache.content.Footer.messages.CookieSetting;
        const cookieSettingLabel = "Cookie Settings/Do Not Sell or Share My Personal Information";
        
        customItemLink.textContent = cookieSettingLabel;
        customItemLi.append(customItemLink);
        footerItemList.append(customItemLi);
        console.log(customItemLink)
      const isPublicationFacets = document.querySelectorAll('[data-ft-facet-id="ft:isPublication"]');
          // Fetch in custom language file Cookie setting label
        await FluidTopicsCustomI18nService.fetchContext('SearchLevel');
        const filterLabel = FluidTopicsCustomI18nService;
        const BookOnlyLabel = filterLabel.cache.content.SearchLevel.messages.BookOnly;
        const TopicsOnlyLabel = filterLabel.cache.content.SearchLevel.messages.TopicsOnly;
              const isPublicationFacet = isPublicationFacets[0]
    
        if(isPublicationFacet ){
            var labels = isPublicationFacet.getElementsByTagName("label");
            for (let i = 0; i < labels.length; ++i) {
              var text = labels[i].innerText || labels[i].textContent;
    
             if (text == "false") {
              labels[i].innerHTML = TopicsOnlyLabel;
             } else if (text == "true") {
                  labels[i].innerHTML = BookOnlyLabel;
             }
            }
        }
        
          var nosearchresults_filters = document.querySelectorAll('.nosearchresults-filters')[0];
        if (nosearchresults_filters) {
              var spans = nosearchresults_filters.getElementsByTagName("span");
            for (let i = 0; i < spans.length; ++i) {
              var text = spans[i].innerText || spans[i].textContent;
    
             if (text == "false") {
              spans[i].innerHTML = TopicsOnlyLabel;
             } else if (text == "true") {
                  spans[i].innerHTML = BookOnlyLabel;
             }
            }
        }
        
        // Later, you can stop observing
        observer.disconnect();
      };
    
      // Create an observer instance linked to the callback function
      const observer = new MutationObserver(callback);
    
      // Start observing the target node for configured mutations
      observer.observe(targetContainer, config); */
  }
  
  document.addEventListener("ft:pageopening", () => {
  
    //customCookieSettingLabelInFooter();
    //  customCoverbar();
  });
  /********** END of PST-3393 ************************/
  
  /*********************************************************/
  /********** PST-3193 Personalized landing pages **********/
  /*********************************************************/
  document.addEventListener("ft:analytics:userevents", saveLastViewedDocument);
  function saveLastViewedDocument(event) {
    for (let singleEvent of event.detail) {
      if (singleEvent.name !== "document.start_display") {
        continue;
      }
      let lastViewedLocal = localStorage.getItem("lastViewedDocuments");
      let lastViewedDocuments = lastViewedLocal
        ? JSON.parse(lastViewedLocal)
        : [];
  
      const documentObj = {
        id: singleEvent.parameters.document.id,
        title: singleEvent.parameters.document.title,
      };
  
      let foundDocument = lastViewedDocuments.find(
        (doc) => doc.id == documentObj.id,
      );
      if (foundDocument) {
        continue;
      }
  
      if (lastViewedDocuments.length >= 5) {
        lastViewedDocuments.pop();
      }
      lastViewedDocuments.unshift(documentObj);
  
      localStorage.setItem(
        "lastViewedDocuments",
        JSON.stringify(lastViewedDocuments),
      );
    }
  }
  
  document.addEventListener("ft:analytics:userevents", saveLastSearches);
  function saveLastSearches(event) {
    for (let singleEvent of event.detail) {
      if (singleEvent.name !== "khub.search") {
        continue;
      }
  
      let lastSearchesLocal = localStorage.getItem("lastSearches");
      let lastSearches = lastSearchesLocal ? JSON.parse(lastSearchesLocal) : [];
  
      const searchObj = {
        id: event.target.location.search,
        query: singleEvent.parameters.searchQuery.terms,
        nbResults: singleEvent.parameters.searchResponse.nbResults,
      };
  
      let foundSearch = lastSearches.find((search) => search.id == searchObj.id);
      if (foundSearch) {
        continue;
      }
  
      if (lastSearches.length >= 5) {
        lastSearches.pop();
      }
      lastSearches.unshift(searchObj);
      localStorage.setItem("lastSearches", JSON.stringify(lastSearches));
    }
  }
  /******************** END of PST-3193 ********************/
  
  /**************************************************************************/
  /************* Start of URL management with Custom Javascript *************/
  /************* Format: https://doc.fluidtopics.com/keyword ****************/
  /**************************************************************************/
function runRedirections(useRouterService = false) {
    if( window.location.href.indexOf("/p/newsearch") != -1 ) return;
    let FTAPI = new fluidtopics.FluidTopicsApi();
  
    if( window.location.href.indexOf("/p/design-hubs-j") != -1 ) {
           if (useRouterService) {
      FluidTopicsRouterService.navigateTo('/v/u/ja-JP/ug1776-adaptive-computing-design-hubs-lp');
    } else {
      window.location.href = FTAPI.tenantBaseUrl + "v/u/ja-JP/ug1776-adaptive-computing-design-hubs-lp";
    }
      return
    } else if (window.location.href.indexOf("/p/design-hubs-c") != -1) {
    
               if (useRouterService) {
      FluidTopicsRouterService.navigateTo('/v/u/zh-CN/ug1776-adaptive-computing-design-hubs-lp');
    } else {
      window.location.href = FTAPI.tenantBaseUrl + "v/u/zh-CN/ug1776-adaptive-computing-design-hubs-lp";
    }
      return
    } else if (window.location.href.indexOf("/p/design-hubs") != -1) {
      
               if (useRouterService) {
      FluidTopicsRouterService.navigateTo('/v/u/en-US/ug1776-adaptive-computing-design-hubs-lp');
    } else {
      window.location.href = FTAPI.tenantBaseUrl + "v/u/en-US/ug1776-adaptive-computing-design-hubs-lp";
    }
    
    return
          
    } else if (window.location.href.indexOf("/v/u/en-US/versal-prime-gen2-psg") != -1) {
                 if (useRouterService) {
      FluidTopicsRouterService.navigateTo('/v/u/en-US/versal-prime-product-selection-guide');
    } else {
      window.location.href = FTAPI.tenantBaseUrl + "v/u/en-US/versal-prime-product-selection-guide";
    }
    
    return
    } else if (window.location.href.indexOf("/v/u/en-US/versal-ai-edge-gen2-psg") != -1) {
                 if (useRouterService) {
      FluidTopicsRouterService.navigateTo('/v/u/en-US/versal-ai-edge-product-selection-guide');
    } else {
      window.location.href = FTAPI.tenantBaseUrl + "v/u/en-US/versal-ai-edge-product-selection-guide";
    }
    
    return
    }  else if (window.location.href.indexOf("/v/u/en-US/versal-premium-gen2-psg") != -1) {
                 if (useRouterService) {
      FluidTopicsRouterService.navigateTo('/v/u/en-US/versal-premium-psg');
    } else {
      window.location.href = FTAPI.tenantBaseUrl + "v/u/en-US/versal-premium-psg";
    }
    
    return
    } 
    
    let change_list = {
          "Boards, Kits, & SOMs":"Boards, Kits, & SOMs (Adaptive SoC & FPGA)",
      "Adaptive SoC and FPGA Tools": "Adaptive SoC & FPGA Tools",
      "Boards%2C Kits%2C and SOMs": "Boards, Kits, & SOMs",
      "FMC and Daughter Cards": "FMC & Daughter Cards",
      "Audio Video and Image Processing": "Audio, Video, & Image Processing",
      "Archive / Mature Products": "Archive & Mature Products",
      "Interface and Interconnect": "Interface & Interconnect",
      "DSP and Math": "DSP & Math",
      "Memory and Controllers": "Memory & Controllers",
      "Automotive and Industrial": "Automotive & Industrial",
      "Clock Reset and Interrupt": "Clock Reset & Interrupt",
      "CoolRunner-II": "CoolRunner II",
      "DMA Timers and Counters": "DMA Timers & Counters",
      "FMC-Video Daughter Board": "FMC Video Daughter Board",
      "Floating-Point": "Floating Point",
      "Graphics and Display": "Graphics & Display",
      "HBM Virtex UltraScale+": "Virtex UltraScale+ HBM",
      "Interface and Control": "Interface & Control",
      "Petalinux - legacy versions": "PetaLinux - Legacy Versions",
      "Reliability and SEU": "Reliability & SEU",
      "Spartan-3": "Spartan 3",
      "Spartan-3A": "Spartan 3A",
      "Spartan-3A DSP": "Spartan 3A DSP",
      "Spartan-3A Extended": "Spartan 3A Extended",
      "Spartan-3AN": "Spartan 3AN",
      "Spartan-3E": "Spartan 3E",
      "Spartan-6 FPGA DSP Kit": "Spartan 6 FPGA DSP Kit",
      "Spartan-6 FPGA Embedded Kit": "Spartan 6 FPGA Embedded Kit",
      "Spartan-II": "Spartan II",
      "Spartan-IIE": "Spartan IIE",
      "Virtex-4": "Virtex 4",
      "Virtex-4Q": "Virtex 4Q",
      "Virtex-4QV": "Virtex 4QV",
      "Virtex-5": "Virtex 5",
      "Virtex-5Q": "Virtex 5Q",
      "Virtex-5QV": "Virtex 5QV",
      "Virtex-6 Broadcast Connectivity Kit":
        "Virtex 6 Broadcast Connectivity Kit",
      "Virtex-6 Embedded Kit": "Virtex 6 Embedded Kit",
      "Virtex-6 FPGA Connectivity Kit": "Virtex 6 FPGA Connectivity Kit",
      "Virtex-6 FPGA DSP Kit": "Virtex 6 FPGA DSP Kit",
      "Virtex-6 HXT FPGA ML630 Evaluation Kit for OTN":
        "Virtex 6 HXT FPGA ML630 Evaluation Kit for OTN",
      "Virtex-E": "Virtex E",
      "Virtex-II": "Virtex II",
      "Virtex-II Pro": "Virtex II Pro",
      "Vitis - legacy versions": "Vitis - Legacy Versions",
      "Vivado - legacy versions": "Vivado - Legacy Versions",
      "XA CoolRunner-II": "CoolRunner II XA",
      "Zynq 7000 Video and Imaging Kit": "Zynq 7000 Video & Imaging Kit",
      "Advisory/Errata": "Advisory & Errata",
      "Reports/Roadmaps/Certification": "Reports, Roadmaps, & Certification",
      "Software/Drivers/Downloads": "Software, Drivers, & Downloads",
      "User Guides and Manuals": "User Guides & Manuals",
      "Safety/EMI": "Safety & EMI",
      "HBM Virtex UltraScale%2B": "Virtex UltraScale%2B HBM"};
    let params = new URLSearchParams(window.location.search);
    let selectedParam_encoded =  params.get("filters") || params.get("value-filters");
    if (selectedParam_encoded == null || selectedParam_encoded === "") return;
  	let selectedParam = decodeURIComponent(selectedParam_encoded);
  
    if (params == null || selectedParam == undefined ||  selectedParam.length === 0) return;
    const boardsKitsSomsAdaptive = "Boards, Kits, & SOMs (Adaptive SoC & FPGA)";
    let new_filter_param = selectedParam;
    if (selectedParam.includes(boardsKitsSomsAdaptive)) {
      new_filter_param = new_filter_param
        .replaceAll("Versal AI Edge Series", "Versal AI Edge")
        .replaceAll("Versal HBM Series", "Versal HBM")
        .replaceAll("Versal Premium Series", "Versal Premium")
        .replaceAll("Versal Prime Series", "Versal Prime")
        .replaceAll("Versal AI Core Series", "Versal AI Core")
        .replaceAll("Product_Name", "Product_custom");
    }
    // Apply change_list replacements for old category/filter labels
    for (let key in change_list) {
      if (new_filter_param.includes(key) && !new_filter_param.includes(change_list[key])) {
        new_filter_param = new_filter_param.replaceAll(key, change_list[key]);
      }
    }
    // Redirect only if something actually changed
    if (new_filter_param === selectedParam) {
      return;
    }

 	 params.delete("filters");
  	 params.delete("value-filters");
  
     if (useRouterService) {
        params.set("value-filters", decodeURIComponent(new_filter_param));
      FluidTopicsRouterService.navigateTo(`/search/all?${params}`);
    } else {
      let FTAPI = new fluidtopics.FluidTopicsApi();
          params.set("value-filters", new_filter_param);
      window.location.href = `${FTAPI.tenantBaseUrl}search/all?${params}`;
    }
   
   
  }
  
  // Run redirection when comming from outside of FluidTopics
  runRedirections();
  
  // Run redirection when comming from inside of FluidTopics
  window.addEventListener("load", observeUrlChange);
  function observeUrlChange() {
    let oldHref = document.location.href;
    const body = document.querySelector("body");
    const observer = new MutationObserver((mutations) => {
      if (oldHref !== document.location.href) {
        oldHref = document.location.href;
       runRedirections(true);
      }
    });
    observer.observe(body, { childList: true, subtree: true });
  }
  /************* End of URL management with Custom Javascript *************/
  
  // Function to update figure and table link text with actual captions 8/13/25//
  function updateFigureTableLinkText() {
  
    // Check if we're in Japanese or Chinese locale - skip processing for these languages
    const ftApp = document.querySelector("ft-app-context");
    if (ftApp) {
      const locale = ftApp.getAttribute("uilocale");
      if (locale === "ja-JP" || locale === "zh-CN") {
  
        return;
      }
    }
  
    // Also check for Japanese/Chinese CSS classes in the document
    const hasJapaneseContent = document.querySelector(".ja-jp");
    const hasChineseContent = document.querySelector(".zh-cn");
    if (hasJapaneseContent || hasChineseContent) {
      return;
    }
  
    // Find all links that might reference figures or tables
    const allLinks = document.querySelectorAll("a[href]");
  
    let processedCount = 0;
    let updatedCount = 0;
  
    allLinks.forEach((link, index) => {
      const href = link.getAttribute("href");
      if (!href) return;
  
      // Skip links that are within Japanese or Chinese content containers
      const isInJapaneseContent = link.closest(".ja-jp");
      const isInChineseContent = link.closest(".zh-cn");
      if (isInJapaneseContent || isInChineseContent) {
        return;
      }
  
      const originalText = link.textContent.trim();
  
      // SKIP: External reference links (these are not figure/table links)
      if (
        link.classList.contains("reference") &&
        link.classList.contains("external")
      ) {
        return; // Exit early, don't process this link
      }
  
      // SKIP: Links that don't look like figure/table references
      if (!originalText.match(/^(Figure|Table)\s+\d+/i)) {
        return; // Exit early, don't process this link
      }
  
      // Skip links with Japanese or Chinese characters in the text
      const japaneseChinesePattern = /[\u3040-\u309F\u30A0-\u30FF\u4E00-\u9FAF]/;
      if (japaneseChinesePattern.test(originalText)) {
        return;
      }
  
      // Check if this is an internal link (#) or external section link
      let targetId = null;
      let isInternalLink = false;
  
      if (href.startsWith("#")) {
        targetId = href.substring(1);
        isInternalLink = true;
      } else if (href.includes("section=")) {
        // Extract section ID from external URL
        const sectionMatch = href.match(/section=([^&]+)/);
        if (sectionMatch) {
          targetId = sectionMatch[1];
          isInternalLink = false;
        }
      }
  
      if (!targetId) return;
  
      // Find the target element across all topics in the document
      function findElementInAllTopics(targetId) {
        // Try the main document first
        let el = document.getElementById(targetId);
        if (el) return el;
  
        // Try all possible topic containers (adjust selectors based on your FT structure)
        const topicSelectors = [
          ".ft-topic",
          ".topic",
          "[data-topic-id]",
          ".ft-section",
          ".section",
          "[data-section-id]",
          ".ft-content",
          ".content",
          '[class*="topic"]',
          '[class*="section"]',
        ];
  
        for (const selector of topicSelectors) {
          const containers = document.querySelectorAll(selector);
          for (const container of containers) {
            el = container.querySelector(`#${targetId}`);
            if (el) return el;
          }
        }
  
        // If still not found, try searching all elements with the ID (fallback)
        const allElementsWithId = document.querySelectorAll(`[id="${targetId}"]`);
        if (allElementsWithId.length > 0) {
          return allElementsWithId[0];
        }
  
        return null;
      }
  
      const targetElement = findElementInAllTopics(targetId);
      if (!targetElement) {

        // Apply smart parsing for missing elements
        let fallbackLabel = targetId;
  
        // Pattern: any prefix + __ + any identifier + _ + meaningful name
        // Examples: znu1746226191534__fig_title_PROM21Series800_B_Class, zez1688740469645__maxlength_topology
        const smartPattern = /^[a-z0-9]+\d+__[a-z_]+_/i;
        if (smartPattern.test(fallbackLabel)) {
          // Extract everything after the pattern
          fallbackLabel = fallbackLabel.replace(/^[a-z0-9]+\d+__[a-z_]+_/i, "");
        } else {
          // Fallback to old method if pattern doesn't match
          if (fallbackLabel.includes("_")) {
            fallbackLabel = fallbackLabel.split("_").pop();
          }
          fallbackLabel = fallbackLabel.replace(/^[tf]_/i, "");
        }
  
        // Insert spaces before capital letters and numbers, and capitalize
        fallbackLabel = fallbackLabel
          .replace(/([a-z])([A-Z0-9])/g, "$1 $2")
          .replace(/([A-Z])([A-Z][a-z])/g, "$1 $2")
          .replace(/([a-zA-Z])(\d)/g, "$1 $2")
          .replace(/([a-z])([A-Z])/g, "$1 $2")
          .replace(/_/g, " ")
          .replace(/\s+/g, " ")
          .trim();
  
        // Capitalize first letter of each word
        fallbackLabel = fallbackLabel.replace(/\b\w/g, (c) => c.toUpperCase());
  
        // Guess Table or Figure based on link text
        let type = "Table";
        if (/figure/i.test(originalText)) type = "Figure";
  
        const newText = `${type}: ${fallbackLabel}`;
        link.textContent = newText;
        updatedCount++;
        return;
      }
  
      // Check for table caption
      let caption = null;
      let elementType = null;
  
      if (targetElement.tagName === "TABLE") {
        const tableCaption = targetElement.querySelector("caption");
        if (tableCaption) {
          caption = tableCaption.textContent.trim();
          elementType = "Table";
        }
      }
  
      // Check for figure caption (Fluid Topics structure)
      if (!caption) {
        const figCap = targetElement.querySelector(".figcap");
        if (figCap) {
          caption = figCap.textContent.trim();
          elementType = "Figure";
        }
      }
  
      // Check for other figure structures
      if (!caption) {
        const figure = targetElement.closest("figure") || targetElement;
  
        const figCaption = figure.querySelector(
          "figcaption, .figcaption, .caption",
        );
        if (figCaption) {
          caption = figCaption.textContent.trim();
          elementType = "Figure";
        } else {
          // Check if it's an image with a title or alt text
          const img =
            figure.querySelector("img") ||
            (figure.tagName === "IMG" ? figure : null);
          if (img) {
            caption = img.getAttribute("title") || img.getAttribute("alt") || "";
            if (caption) {
              elementType = "Figure";
            }
          }
        }
      }
  
      if (caption && elementType) {
        // Use the actual caption (existing functionality preserved)
        const figureMatch = originalText.match(/^Figure\s+(\d+)/i);
        const tableMatch = originalText.match(/^Table\s+(\d+)/i);
  
        if (figureMatch || tableMatch) {
          let cleanCaption = caption.replace(/^(Table|Figure)\s+\d+\.?\s*/i, "");
          const newText = `${elementType}: ${cleanCaption}`;
          link.textContent = newText;
          updatedCount++;
        }
      } else {
        // No caption found - apply smart parsing as fallback

  
        let fallbackLabel = targetId;
  
        // Pattern: any prefix + __ + any identifier + _ + meaningful name
        const smartPattern = /^[a-z0-9]+\d+__[a-z_]+_/i;
        if (smartPattern.test(fallbackLabel)) {
          fallbackLabel = fallbackLabel.replace(/^[a-z0-9]+\d+__[a-z_]+_/i, "");
        } else {
          if (fallbackLabel.includes("_")) {
            fallbackLabel = fallbackLabel.split("_").pop();
          }
          fallbackLabel = fallbackLabel.replace(/^[tf]_/i, "");
        }
  
        // Insert spaces before capital letters and numbers, and capitalize
        fallbackLabel = fallbackLabel
          .replace(/([a-z])([A-Z0-9])/g, "$1 $2")
          .replace(/([A-Z])([A-Z][a-z])/g, "$1 $2")
          .replace(/([a-zA-Z])(\d)/g, "$1 $2")
          .replace(/([a-z])([A-Z])/g, "$1 $2")
          .replace(/_/g, " ")
          .replace(/\s+/g, " ")
          .trim();
  
        // Capitalize first letter of each word
        fallbackLabel = fallbackLabel.replace(/\b\w/g, (c) => c.toUpperCase());
  
        let type = "Table";
        if (/figure/i.test(originalText)) type = "Figure";
  
        const newText = `${type}: ${fallbackLabel}`;
        link.textContent = newText;
        updatedCount++;
      }
  
      processedCount++;
    });

  }
  
  // Event listeners to trigger the function
  document.addEventListener("ft:reader:topicsloaded", function () {
    updateFigureTableLinkText();
  });
  
  document.addEventListener("ft:pageopening", function () {
    updateFigureTableLinkText();
  });
  
  // Fallback event listeners
  document.addEventListener("DOMContentLoaded", function () {
    updateFigureTableLinkText();
  });
  
  window.addEventListener("load", function () {
    updateFigureTableLinkText();
  });
  
  
  /*toggle search*/
  document.addEventListener("ft:pageopening", function () {
        if (window.location.href.indexOf("/search") != -1 &&  window.location.href.indexOf("/admin") == -1) {
                   insertToggleinSearch()
                      const toggleBtn = document.getElementsByClassName('searchpage-sub-search-bar-middle-wrapper');
              // Event listener for toggle button click
              if (toggleBtn) {
                   initToggleSwitches();
              }
          
    }
    
    if (window.location.href.indexOf("/p/newsearch-copy-1-copy") != -1) {
     alert("alert from custom.js")
    }
  });
    function initToggleSwitches() {
          const toggleElements = document.querySelectorAll('.toggle-switch');
          
          toggleElements.forEach(element => {
              const checkbox = element.querySelector('input[type="checkbox"]');
              const redirectUrl = element.getAttribute('data-redirect-url');
              
              if (!checkbox) {
                  return;
              }
              
              // Initialize toggle and label states based on current URL
              const isBetaSearch = window.location.href.indexOf('/p/newsearch') !== -1;
              checkbox.checked = isBetaSearch;
              
              const container = checkbox.closest('.toggle-label-container');
              if (container) {
                  const labels = container.querySelectorAll('.toggle-label-option');
                  if (isBetaSearch) {
                      labels[0].classList.remove('active');
                      labels[1].classList.add('active');
                  } else {
                      labels[0].classList.add('active');
                      labels[1].classList.remove('active');
                  }
              }
              
              // Handle toggle change
              checkbox.addEventListener('change', function(e) {
                  const container = checkbox.closest('.toggle-label-container');
                  if (container) {
                      const labels = container.querySelectorAll('.toggle-label-option');
                      labels.forEach(label => label.classList.toggle('active'));
                  }
                  
                  if (redirectUrl) {
                      // Get current URL parameters
                      const currentParams = new URLSearchParams(window.location.search);
                      
                      // Parse the redirect URL
                      const redirectUrlObj = new URL(redirectUrl, window.location.origin);
                      
                      // Add current parameters to the redirect URL
                      currentParams.forEach((value, key) => {
                          redirectUrlObj.searchParams.set(key, value);
                      });
                      
                      // Redirect to the new URL with parameters
                      window.location.href = redirectUrlObj.toString();
                  } else {
                      // Default behavior - just log the state
                  }
              });
  
  
  
          });
      }
  function insertToggleContainer( targetElement, containerId = 'toggleContainer', labelText = 'Toggle Switch') {
                  const toggleContainer = createToggleContainer(containerId, labelText);
                  try {
  
                        targetElement.parentNode.append(toggleContainer, targetElement);
                      } catch (error) {
  
                          try {
                              document.body.appendChild(toggleContainer);
                                              alert(JSON.stringify(document.body))
  
                              return toggleContainer;
                          } catch (fallbackError) {
                              return null;
                          }
                  }
                  return toggleContainer;
                  }
  
              // Function to create a toggle container
              function createToggleContainer(containerId = 'toggleContainer', labelText = 'Toggle Switch') {
                  const toggleDiv = document.createElement('div');
                  toggleDiv.className = 'searchpage-sub-search-bar-middle-wrapper';
                    const toggleContainer = document.createElement('div');
                  toggleContainer.className = 'toggle-switch-container toggle-label-container';
                toggleContainer.id="toggleContainer"
                toggleContainer.innerHTML = '<span class="toggle-label-option">Classic</span><label class="toggle-switch" data-redirect-url="/p/newsearch"><input type="checkbox"><span class="toggle-slider"></span></label><span class="toggle-label-option active">New</span>'
             /*    const advanced_search_option = document.createElement('a');
                advanced_search_option.href = "/access/sources/dita/topic?url=documentation-portal&resourceid=sum1633102487105.html&ft:locale=en-US";
                advanced_search_option.rel = "nofollow noopener noreferrer";
                advanced_search_option.target = "_blank";
                advanced_search_option.innerHTML = "<p>Advanced Search Options</p>"
                              toggleDiv.appendChild(advanced_search_option); */
                  toggleDiv.appendChild(toggleContainer);
  
                  // Create toggle button
                  //const toggleBtn = document.createElement('button');
                  //toggleBtn.className = 'toggle-button';
                 // toggleBtn.id = 'toggleBtn';
                 // toggleBtn.textContent = 'New Search';
                //toggleDiv.appendChild(toggleBtn);
                  return toggleDiv;
              }
  function insertToggleinSearch() {
          const toggleBtn = document.getElementById('toggleContainer');
      if (toggleBtn) return;
      const pageHeader = document.getElementsByClassName('searchpage-search-actions-wrapper')[0];
  
      const mainToggleContainer = insertToggleContainer( pageHeader, 'mainToggleContainer', 'New Search');
    const left_wrapper =  document.getElementsByClassName('searchpage-sub-search-bar-left-wrapper')[0];
                const dividerBefore = document.createElement('span')
              dividerBefore.classList.add("divider");
      left_wrapper.appendChild(dividerBefore);
                   const advanced_search_option = document.createElement('a');
                advanced_search_option.href = "/access/sources/dita/topic?url=documentation-portal&resourceid=sum1633102487105.html&ft:locale=en-US";
                advanced_search_option.rel = "nofollow noopener noreferrer";
                advanced_search_option.target = "_blank";
                advanced_search_option.innerHTML = "<p>Advanced Search Options</p>"
                advanced_search_option.classList.add("advanced-search-option");
    left_wrapper.appendChild(advanced_search_option);
                const dividerAfter = document.createElement('span')
              dividerAfter.classList.add("divider");
      left_wrapper.appendChild(dividerAfter);
  }
  
  
  // ============================================
  // PDF Icon - Show generic icon when no attachments (12-17-25)
  // ============================================
  (function() {
    function checkAttachments() {
      const attachmentBtn = document.querySelector('.fluid-aside-tab-id-mapattachments');
      if (!attachmentBtn) return;
      
      const btnText = attachmentBtn.textContent || '';
      
      if (btnText.toLowerCase().includes('no pdf') || btnText.toLowerCase().includes('no attachment')) {
        attachmentBtn.classList.add('no-attachments');
      } else {
        attachmentBtn.classList.remove('no-attachments');
      }
    }
  
    const observer = new MutationObserver(checkAttachments);
    observer.observe(document.body, { childList: true, subtree: true });
    
    if (document.readyState === 'complete') {
      checkAttachments();
    } else {
      window.addEventListener('load', checkAttachments);
    }
  })();

/*****************************************************************************
 * TDS-2455 — Language/Version Switcher Fix for New FT Reader (/r/ pages)
 * Added by: Shivani (stage export 2026-03-13)
 * Consolidated: 2026-03-18
 *
 * Root cause (confirmed via live investigation 2026-03-13):
 *   - ft-reader-metadata.useForSwitchingToRelatives is always false because
 *     stateManager.clusteringHelperProvider is null on staging.
 *   - Without clusteringHelper, updateRelatives() always sets relatives = []
 *     and never flips useForSwitchingToRelatives to true.
 *   - render() branches on (useForSwitchingToRelatives && relatives.length > 0):
 *     false → renderChip() [dead chip], true → renderSwitchToRelatives() [popup]
 *
 * Fix: Bypass clusteringHelper entirely. Call stateManager.service
 *   .fetchRelativesForDocument() directly (same underlying API, fully working),
 *   build the relatives array, and inject it into ft-reader-metadata via
 *   LitElement reactive properties + requestUpdate().
 *
 * Scope: /r/ reader pages only — no impact on GWT viewer (/v/u/) pages.
 * Risk:  Low — only runs when clusteringHelperProvider is missing/null.
 *****************************************************************************/
(function fixVersionSwitcher() {
  if (window.location.href.indexOf('/r/') === -1) return;

  function findAllShadow(root, tag) {
    var found = [];
    var lowerTag = tag.toLowerCase();
    root.querySelectorAll('*').forEach(function(el) {
      if (el.tagName && el.tagName.toLowerCase() === lowerTag) found.push(el);
      if (el.shadowRoot) found.push.apply(found, findAllShadow(el.shadowRoot, tag));
    });
    return found;
  }

  // Shape required by ft-reader-metadata.renderRelativeItem():
  //   { result: '/r/{ft:prettyUrl}', metadata: { key, value, displayValue, displayTooltipValue } }
  function buildRelatives(apiResult, readerPrefix, metaKey) {
    var relatives = [];
    if (!apiResult || !apiResult.results || !apiResult.results[0]) return relatives;
    apiResult.results[0].entries.forEach(function(entry) {
      if (!entry.document || !entry.document.metadata) return;
      var docMeta = {};
      entry.document.metadata.forEach(function(m) {
        if (m.values && m.values.length) docMeta[m.key] = m.values[0];
      });
      var prettyUrl = docMeta['ft:prettyUrl'];
      var metaValue = docMeta[metaKey];
      if (!prettyUrl || !metaValue) return;
      relatives.push({
        result: '/' + readerPrefix + prettyUrl,
        metadata: {
          key: metaKey,
          value: metaValue,
          displayValue: metaValue,
          displayTooltipValue: metaValue
        }
      });
    });
    return relatives;
  }

  // Find ft-reader-metadata components; if clusteringHelper is missing,
  // call fetchRelativesForDocument() directly to populate the version chip.
  function patchVersionSwitcher() {
    var allMetadata = findAllShadow(document, 'ft-reader-metadata');
    if (!allMetadata.length) return;

    var docVersionEl = null;
    var docIdEl = null;
    allMetadata.forEach(function(el) {
      var k = el.getAttribute('key') || (el.key);
      if (k === 'Doc_Version') docVersionEl = el;
      if (k === 'Document_ID') docIdEl = el;
    });

    if (!docVersionEl) return;

    var sm = docVersionEl.stateManager;
    if (sm && sm.clusteringHelper) return;

    if (docVersionEl._tds2455patched) return;

    var service = sm && sm.service;
    if (!service || typeof service.fetchRelativesForDocument !== 'function') return;

    var docId = docIdEl
      ? (docIdEl.getAttribute('value') || (docIdEl.values && docIdEl.values[0]) || null)
      : null;

    if (!docId) {
      var urlMatch = window.location.pathname.match(/\/r\/[^/]+\/([^/]+)/);
      if (urlMatch) docId = urlMatch[1].toUpperCase();
    }

    if (!docId) return;

    docVersionEl._tds2455patched = true;

    var readerPrefix = (typeof service.getReaderLinkPrefix === 'function')
      ? service.getReaderLinkPrefix()
      : 'r/';

    service.fetchRelativesForDocument('Document_ID', [docId])
      .then(function(result) {
        var relatives = buildRelatives(result, readerPrefix, 'Doc_Version');
        if (!relatives.length) return;
        docVersionEl.useForSwitchingToRelatives = true;
        docVersionEl.relatives = relatives;
        if (typeof docVersionEl.requestUpdate === 'function') {
          docVersionEl.requestUpdate();
        }
      })
      .catch(function(err) {
        console.warn('[TDS-2455] fetchRelativesForDocument failed:', err);
      });
  }

  document.addEventListener('ft:reader:topicsloaded', patchVersionSwitcher);
  document.addEventListener('ft:pageopening', patchVersionSwitcher);

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', patchVersionSwitcher);
  } else {
    setTimeout(patchVersionSwitcher, 800);
  }
})();
/*** END TDS-2455 ***/

/*****************************************************************************
 * Mermaid Diagram Rendering (from dev2, consolidated 2026-03-18)
 *
 * Loads mermaid.js from CDN and polls for .mermaid / .highlight-mermaid
 * blocks — including inside shadow DOM — since content loads asynchronously
 * after ft:reader:topicsloaded fires. Renders matching blocks as inline SVG.
 *
 * Scope: Reader pages with mermaid-class code blocks.
 *****************************************************************************/
(function initMermaidRendering() {
  var mermaid_config = {
    startOnLoad: false,
    securityLevel: "script",
    theme: "default",
    flowchart: { htmlLabels: false },
    er: { useMaxWidth: false },
    sequence: { useMaxWidth: false }
  };

  // Mermaid script is NOT loaded here — loadMermaidScript() is called lazily
  // inside startMermaidPolling() only when .mermaid blocks are actually found.
  // This avoids loading the 812KB mermaid bundle on every page.
  var _mermaidScriptLoaded = false;
  function loadMermaidScript() {
    if (_mermaidScriptLoaded) return;
    _mermaidScriptLoaded = true;
    var mermaidScript = document.createElement("script");
    mermaidScript.type = "text/javascript";
    mermaidScript.src = "https://cdn.jsdelivr.net/npm/mermaid/dist/mermaid.min.js";
    mermaidScript.onload = function () {
      if (typeof mermaid !== "undefined") mermaid.initialize(mermaid_config);
    };
    document.head.appendChild(mermaidScript);
  }

  function findMermaidBlocks() {
    var selector = ".mermaid:not(.rendered), .highlight-mermaid:not(.rendered)";
    var allBlocks = [];
    var direct = document.querySelectorAll(selector);
    for (var i = 0; i < direct.length; i++) allBlocks.push(direct[i]);
    try {
      var walk = function (node) {
        if (!node) return;
        if (node.shadowRoot) {
          var found = node.shadowRoot.querySelectorAll(selector);
          for (var j = 0; j < found.length; j++) allBlocks.push(found[j]);
          walk(node.shadowRoot);
        }
        for (var c = 0; c < (node.children ? node.children.length : 0); c++) walk(node.children[c]);
      };
      walk(document.body);
    } catch (e) { /* shadow DOM walk failed gracefully */ }
    return allBlocks;
  }

  var mermaidPollTimer = null;
  var mermaidPollCount = 0;

  async function renderMermaid() {
    if (typeof mermaid === "undefined") return;
    var blocks = findMermaidBlocks();
    if (blocks.length === 0) return;
    for (var i = 0; i < blocks.length; i++) {
      var block = blocks[i];
      var pre = block.querySelector("pre");
      var graphDefinition = pre ? pre.textContent.trim() : block.textContent.trim();
      if (!graphDefinition) continue;
      try {
        var uid = "mDiag" + Date.now() + "_" + i;
        var result = await mermaid.render("aGraph" + uid, graphDefinition);
        block.innerHTML = result.svg;
        if (result.bindFunctions) result.bindFunctions(block);
        block.classList.add("rendered");
      } catch (err) {
        block.classList.add("rendered");
      }
    }
  }

  function startMermaidPolling() {
    if (mermaidPollTimer) clearInterval(mermaidPollTimer);
    mermaidPollCount = 0;
    mermaidPollTimer = setInterval(function () {
      mermaidPollCount++;
      var blocks = findMermaidBlocks();
      if (blocks.length > 0) {
        // Blocks found — load mermaid.js now if not already loaded (lazy 812KB save)
        loadMermaidScript();
        if (typeof mermaid !== "undefined") {
          clearInterval(mermaidPollTimer);
          mermaidPollTimer = null;
          renderMermaid();
        }
        // else: script is loading, poll will keep running until mermaid is defined
      } else if (mermaidPollCount >= 15) {
        clearInterval(mermaidPollTimer);
        mermaidPollTimer = null;
      }
    }, 1000);
  }

  document.addEventListener("ft:reader:topicsloaded", startMermaidPolling);
  document.addEventListener("ft:pageopening", startMermaidPolling);
  startMermaidPolling();
})();
/*** END Mermaid Diagram Rendering ***/

// ── TDS-2754: Fix invisible search input text for CJK users ─────────────────
//
// Root cause: `body:not(.application-admin-page) { --ft-color-on-surface: var(--ft-theme-studio-color-on-surface) }`
// resolves to #f5f5f5 (near-white). CSS custom properties cascade through all shadow DOM
// boundaries, making ft-search-bar input and suggestion text invisible on white background.
//
// Why CSS cannot fix this: ft-search-bar lives 2 shadow boundaries deep inside
// DIV#homepage-designed-content (shadow host) → ft-search-bar-wrapper (shadow host) → ft-search-bar.
// No intermediate element exposes exportparts, so ::part() from the outer document cannot reach it.
//
// Fix: inject a <style> directly into ft-search-bar's shadow root, overriding text color only.
// Two observers work together to eliminate the gray flash on bfcache restore:
//   1. Light DOM observer (document.body) — catches ft-search-bar being added to DOM.
//   2. Shadow root observer (ftSearchBar.shadowRoot) — catches Angular wiping our style from
//      inside the shadow root. Light DOM observers cannot see shadow DOM mutations, so without
//      this second observer there is a brief visible flash before we re-inject.
// ────────────────────────────────────────────────────────────────────────────────────────────
(function fixCJKSearchTextColor() {
  function findInShadows(root, selector) {
    var found = root.querySelector(selector);
    if (found) return found;
    var all = root.querySelectorAll('*');
    for (var i = 0; i < all.length; i++) {
      if (all[i].shadowRoot) {
        var r = findInShadows(all[i].shadowRoot, selector);
        if (r) return r;
      }
    }
    return null;
  }

  var STYLE_CSS = [
    ':host { --ft-color-on-surface: rgba(0,0,0,0.87) !important; }',
    '.ft-search-bar--container { color: rgba(0,0,0,0.87) !important; }',
    '.ft-search-bar--input { color: rgba(0,0,0,0.87) !important; }',
    '.ft-search-bar--suggestion { color: rgba(0,0,0,0.87) !important; }',
    '.ft-search-bar--recent-search { color: rgba(0,0,0,0.87) !important; }',
    '[part~="suggestion-container"] { color: rgba(0,0,0,0.87) !important; }'
  ].join(' ');

  // Watches the shadow root directly so we re-inject the instant Angular removes our style.
  // This is the key fix for the gray flash: light DOM observers miss shadow DOM mutations.
  var shadowObserver = new MutationObserver(function () {
    var ftSearchBar = findInShadows(document, 'ft-search-bar');
    if (!ftSearchBar || !ftSearchBar.shadowRoot) return;
    if (!ftSearchBar.shadowRoot.querySelector('#tds-2754-fix')) {
      var style = document.createElement('style');
      style.id = 'tds-2754-fix';
      style.textContent = STYLE_CSS;
      ftSearchBar.shadowRoot.appendChild(style);
    }
    if (!ftSearchBar.__tds2754Watched) {
      ftSearchBar.__tds2754Watched = true;
      shadowObserver.observe(ftSearchBar.shadowRoot, { childList: true });
    }
  });

  function injectStyle() {
    var ftSearchBar = findInShadows(document, 'ft-search-bar');
    if (!ftSearchBar || !ftSearchBar.shadowRoot) return false;
    if (!ftSearchBar.shadowRoot.querySelector('#tds-2754-fix')) {
      var style = document.createElement('style');
      style.id = 'tds-2754-fix';
      style.textContent = STYLE_CSS;
      ftSearchBar.shadowRoot.appendChild(style);
    }
    // Attach shadow root observer if not already watching this element.
    if (!ftSearchBar.__tds2754Watched) {
      ftSearchBar.__tds2754Watched = true;
      shadowObserver.observe(ftSearchBar.shadowRoot, { childList: true });
    }
    return true;
  }

  // Light DOM observer — catches ft-search-bar being added/re-added to the page.
  var lightObserver = new MutationObserver(function () {
    injectStyle();
    attachShadowObservers();
  });

  // Shadow root observers — light DOM observers can't see mutations inside shadow roots.
  // After a language-change full-page reload, Angular mounts ft-search-bar inside nested
  // shadow roots (#homepage-designed-content → ft-search-bar-wrapper → ft-search-bar),
  // so we must observe those shadow root boundaries directly.
  var shadowRootObserver = new MutationObserver(function () {
    injectStyle();
    attachShadowObservers();
  });
  var watchedShadowRoots = [];
  function attachShadowObservers() {
    var hosts = ['#homepage-designed-content', 'ft-search-bar-wrapper'];
    hosts.forEach(function (sel) {
      var el = document.querySelector(sel) ||
               (function () {
                 var all = document.querySelectorAll('*');
                 for (var i = 0; i < all.length; i++) {
                   if (all[i].shadowRoot) {
                     var found = all[i].shadowRoot.querySelector(sel);
                     if (found) return found;
                   }
                 }
               })();
      if (el && el.shadowRoot && watchedShadowRoots.indexOf(el.shadowRoot) === -1) {
        watchedShadowRoots.push(el.shadowRoot);
        shadowRootObserver.observe(el.shadowRoot, { childList: true, subtree: true });
      }
    });
  }

  function waitAndFix() {
    injectStyle();
    lightObserver.observe(document.body, { childList: true, subtree: true });
    attachShadowObservers();
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', waitAndFix);
  } else {
    waitAndFix();
  }

  // Re-run when browser restores page from bfcache (back/forward navigation).
  window.addEventListener('pageshow', function (e) {
    if (e.persisted) waitAndFix();
  });
})();