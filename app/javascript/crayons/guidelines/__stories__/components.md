   <h1>Components</h1>
    <p>
      DEV is a Rails application. Most of what we build for views uses ERB
      templates (*.html.erb files). We also build out parts of or sometimes
      complete views using

      <a href="https://docs.dev.to/frontend/preact/">Preact</a>
      , typically for
      the logged on user experience. For example, the main page feed.
    </p>
    <p>
      Because of that, we components that are written in pure HTML &amp; CSS as
      well as Preact.
    </p>
    <h3>BEM class naming</h3>
    <p>
      The entire design system uses the

      <a href="http://getbem.com/naming/">BEM</a>

      methodology for naming CSS
      classes. Even Preact components under the hood use it.
    </p>
    <h3>crayons-*</h3>
    <p>
      Crayons is the name of our design system. All Crayons components use the

      <code>crayons-</code>

      prefix. It&#x27;s useful because we can easily
      identify what
      <strong>IS</strong>

      and what
      <strong>IS NOT</strong>

      a
      Crayons component. It&#x27;s also practical because Crayons was
      implemented when we already had tons of other frontend classes in the
      codebase. It prevents overwriting styles by other CSS and it&#x27;s very
      unlikely someone has ever created a
      <code>.crayons-btn</code>

      style BUT
      it&#x27;s very likely someone has created
      <code>.btn</code>

      style...
    </p>
    <h2>HTML &amp; CSS Components</h2>
    <p>
      You&#x27;ll need to copy piece of html code responsible for rendering a
      component and that&#x27;s it. Imagine a simple button component. The code
      below will render a

      <strong>primary button</strong>

      with specific styling:
    </p>
    <pre>
      <code>
        &lt;button class=&quot;crayons-btn&quot;&gt;Hello&lt;/button&gt;
      </code>
    </pre>
    <p>
      Crayons offers different variants for a button. A button can be one of the
      following variants: primary, secondary, outlined, danger, ghost, with
      icon, and so on. All of the components and its variations are described in
      the Components section.
    </p>
    <p>
      Imagine you need a small (size

      <strong>s</strong>
      ),

      <strong>secondary</strong>

      type. In this case you will need to apply
      specific modifier class for that:
    </p>
    <pre>
      <code>
        &lt;button class=&quot;crayons-btn crayons-btn--secondary
        crayons-btn--s&quot;&gt;Hello&lt;/button&gt;
      </code>
    </pre>
    <h2>Preact Components</h2>
    <p>
      The same button above that was created with pure HTML using modifying
      classes is also a Preact component.
    </p>
    <pre>
      <code>
        import &#123; Button &#125; from &#x27;@crayons&#x27;; //... &lt;Button
        size=&quot;s&quot; variant=&quot;secondary&quot;&gt;Hello&lt;Button&gt;
      </code>
    </pre>
    <p>
      To import a design system component, e.g.

      <code>&lt;Button /&gt;</code>
      ,
      import it from

      <code>@crayons</code>
      . Instead of modifying CSS classes,
      modify props, e.g.

      <code>variant=&quot;primary&quot;</code>
      .
    </p>